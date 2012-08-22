require 'fileutils'
require 'i18n'
require 'active_support/core_ext/string'
require 'erb'

repo = ARGV.shift

unless File.directory? repo
  $stderr.puts "#{repo} does not exist!"
  abort
end

Dir.chdir repo do
  system "git status"

  unless $?.success?
    $stderr.puts "#{repo} does not appear to be a git repo!"
    abort
  end
end

bio = File.read "bio.md"
links = File.read "links.md"

template = <<-ERB
<%= content %>

## Adam Hawkins

<%= bio %>

(Me)[https://raw.github.com/twinturbo/talks/master/headshot1.jpeg]

## On the web

<%= links %>

ERB

talks = Dir['*.md'].reject { |f| f =~ /(bio|readme|links)\.md/i }

talks.each do |talk|
  title = File.basename talk, '.md'
  content = File.read talk

  Dir.chdir repo do
    directory_name = "adam_hawkins-#{title}"

    `git checkout master && git checkout -b "#{title}"`

    FileUtils.mkdir_p directory_name

    File.open "#{directory_name}/README.md", "w+" do |readme|
      readme.puts ERB.new(template).result(binding)
    end

    `git add -A`
    `git commit -m "#{title.titleize}"`
    `git push origin "#{title}"`
  end
end

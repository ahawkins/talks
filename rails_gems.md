# Abstract

Expected Time: 30 minutes

Rails provides many integrations points. A lot of them seem like black
magic. This talk aims to clear it up. It will demonstrate that most of
what gems do is standard. However sometimes it will get fancy. This talk
will cover some edge cases and complicated integrations as well.

* Connect your gem using a Railtie
* Bundle app/controllers/views/assets
* Using `ActiveSupport.on_load` callbacks
* Generating one off rails applications for testing your rails
  independent gems
* Edge cases in the `rails plugin` generator
* Testing engines/gems
* Gemming best practices
* Integrating with other common gems (ex: Resque)

# Notes

This talk sums up my experience writing a ton of gems for business and
open source users.

Here's my list:

* Cashier (Tag based caching for Rails)
* HttpLog (Log incoming HTTP requests to MongoDB)
* Harness (Metric Logging using ActiveSupport::Notifications)
* Radium.io (Integration for our Radium.io platform)
* A ton of various gems for internal and private use

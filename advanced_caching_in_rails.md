# Advanced Caching in Rails

## Abstract

Expected time: 45 minutes.

Caching in rails is complicated. There is: Page caching, action caching,
fragment caching, low level caching, and HTTP caching. This talk will
guide you through basics and best practices of each. Caching is
extremely important your app's performance so this talk will help you
get it right. It will cover:

* Auto-expiring cached content
* Caching collections
* Page/Action/Fragment/Low level (Rails.cache) Caching
* Explaining Rack::Cache
* Cache warming for JSON API's
* Caching at the model layer
* Techniques for caching multiuser HTML
* HTTP caching for public/private APIs
* HTTP caching vs Page/Action caching
* Tag based caching for easier expiring

## Notes

This talk is heavily based on my popular [blog post](http://broadcastingadam.com/2011/05/advanced_caching_in_rails)
with updated content related to HTTP caching.

This will be a technical talk with examples.

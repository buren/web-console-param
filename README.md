# WebConsoleParam

Open Rails web-console by adding `?web_console=1` to any page. You could implement this yourself in a couple of lines, but if you're really lazy.. go ahead and use this gem.

It adds a `before_action` to `ActionController::Base`, which calls `WebConsole#console` if the params include `web_console=`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'web-console', '~> 2.0', group: [:development] # the web-console gem needs to be defined
gem 'web-console-param', group: [:development]
```
#### For security reasons only install this in your Gemfile's development group.

And then execute:

    $ bundle

## Usage

There is now other setup required besides adding the gem to your Gemfile. It will automatically add a `before_action` to anything that inherits from `ActionController::Base`.

## Contributing

1. Fork it (`git clone https://github.com/buren/web-console-param`)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

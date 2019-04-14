# VK::Bot::Types

Dry-struct for VK Group Bot API 5.92.

## Installation

Add following line to your Gemfile:

```ruby
gem 'vk-bot-types'
```

And then execute:

```shell
$ bundle
```

Or install it system-wide:

```shell
$ gem install vk-bot-types
```

## Usage

```ruby
updates = bot.get_updates.map do |x|
  VK::Bot::Types::Update.new(x)
end
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

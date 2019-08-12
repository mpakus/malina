# Malina
[![CircleCI](https://circleci.com/gh/mpakus/malina.svg?style=svg)](https://circleci.com/gh/mpakus/malina)

Interface for browsing sent emails.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'malina', group: :development
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install malina
```

### 1. Generate initialize file

```bash
rails g malina:install
```

it generates `malina_emails.rb` in your application's folder `config/initializers/` 
```ruby
ActionMailer::Base.register_interceptor(Malina::EmailInterceptor) if Rails.env.development?

Malina::Config.layout = 'malina'
```

### 2. Generate migration file

```bash
rails g malina:migration
```

run migration
```bash
rails db:migrate
```

### 3. Mount route
add this line to your `config/routes.rb`

```ruby
mount Malina::Engine => '/backroom/emails', as: :malina
```
you can change this url of course

## Usage

and now interface is available at your's app url, for example `localhost:3000/backroom/emails`

![Alt text](https://monosnap.com/image/L4OXErEzGxTbtT262b8P8XPqmGoz9L)

![Alt text](https://monosnap.com/image/dDrVpfW9PP6ixMZlJqeUVBQGa1MUgW)

## Views

Since Malina is an engine, all its views are packaged inside the gem. 
These views will help you get started, but after some time you may want to change them. 
If this is the case, you just need to invoke the following generator, and it will copy all views to your application:

```bash
rails g malina:layout
```
makes Layout available for changes

```bash
rails g malina:views
```
the other views, too

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/mpakus/malina

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

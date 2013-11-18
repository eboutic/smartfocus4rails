Smartfocus ruby on rails library
=================================

Smartfocus4rails is a library used to manage messages and campaigns or more simply newsletters from your rails application.

[![Build Status](https://secure.travis-ci.org/eboutic/smartfocus4rails.png)](http://travis-ci.org/eboutic/smartfocus4rails)
[![Code Climate](https://codeclimate.com/github/eboutic/smartfocus4rails.png)](https://codeclimate.com/github/eboutic/smartfocus4rails)
[![Coverage Status](https://coveralls.io/repos/eboutic/smartfocus4rails/badge.png)](https://coveralls.io/r/eboutic/smartfocus4rails)
[![Dependency Status](https://gemnasium.com/eboutic/smartfocus4rails.png)](https://gemnasium.com/eboutic/smartfocus4rails)

Install
-------

### Without bundler

```shell
$ gem install smartfocus4rails
```

### With bundler

Past this line to your Gemfile

```ruby
gem 'smartfocus4rails'
```

Setup
-----

```shell
$ rails generate smartfocus4rails:setup
```

This will create the following config file : **config/smartfocus.yml**

Generator
---------

```shell
$ rails generate newsletter standard daily weekly
	create  app/newsletters/standard_newsletter.rb
	create  app/views/standard_newsletter/daily.html.emv
	create  app/views/standard_newsletter/daily.text.emv
	create  app/views/standard_newsletter/weekly.html.emv
	create  app/views/standard_newsletter/weekly.text.emv
```

Publication

```ruby
StandardNewsletter.daily.publish
```

Preview

```ruby
StandardNewsletter.daily.to_html # or to_text
```

More infos
----------

If you want to dig deeper, Go see our wiki pages.

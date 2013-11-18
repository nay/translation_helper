# TranslationHelper

TranslationHelper provides .translation_helper_method which helps you add your own translation helper method to controllers.

## Installation

Add this line to your application's Gemfile:

    gem 'translation_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translation_helper

## Usage

You can add helper method for translation to your ApplicationController (or any controller) quickly.

For example,

  class ApplicationController < ActionController::Base

    translation_helper_method :title

This makes you use title method in actions and views which get translation from "en.titles.welcome".

  <%= title :welcome %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

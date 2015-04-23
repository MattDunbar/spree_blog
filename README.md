SpreeBlog
=========

#### Warning: Support for changes in pull request [pull request #5954](https://github.com/spree/spree/pull/5954) are added via monkey patching. This is only compatible with Spree 2-2-stable, 2-3-stable, and 2-4-stable. Although unlikely, the resource controller changes may cause compatibility issues.

A very lightweight blog built into the Spree Admin for stores that don't quite need a full blog engine.

Installation
------------

Add spree_blog to your Gemfile:

```ruby
gem 'spree_blog'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_blog:install
```


Copyright (c) 2015 Matthew Dunbar, released under the New BSD License

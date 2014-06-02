rosstimson-vim Cookbook
=======================

Compiles [Vim][vim] from source cloned from the Mercurial repo.  It is compiled
with the configuration options I like but it these options can be changed via
an attribute.  You can also optionally compile with GTK2 GUI support.

Requirements
------------

### Cookbooks

This cookbook is dependant on the following community cookbooks:

* `build-essential`
* `python`
* `mecurial`

### Platforms

The following platforms are supported and have been automatically tested under
[Test Kitchen][testkitchen]:

* Fedora 20 (Heisenbug)

Usage
-----

Simple include `recipe[rosstimson-vim]` in your run_list to have [Vim][vim]
compiled and installed.

Recipes
-------

### default

Compiles [Vim][vim] from source (Mercurial tip) 

Attributes
----------

### default

* `['rosstimson-vim']['prefix']` - Prefix for installing to.
* `['rosstimson-vim']['desktop']['enable']` - Boolean option for compiling with GTK2 GUI.
* `['rosstimson-vim']['configuration']` - Build options to pass into `./configure`.
* `['rosstimson-vim']['dependencies']` - Supplementary packages needed for dependencies.

Development
-----------

* Source hosted at [GitHub][repo]
* Report issues/Questions/Feature requests on [GitHub Issues][issues]

### Contributing

Pull requests are very welcome! Ideally create a topic branch for every
separate change you make.

This cookbook uses [ChefSpec][chefspec] for unit tests. I also use
[FoodCritic][foodcritic] and [RuboCop][rubocop] to check for style
issues. When contributing it would be very helpful if you could run
these via `bundle exec spec` and `bundle exec style`.

Lastly, there are [Serverspec][serverspec] integration tests for use
ignored. To see all of the available integration test suites just check
`bundle exec rake -T` or `bundle exec kitchen list`, it would be great
if you run these tests too, you may however leave out the Amazon Linux
test suite if you do not have an AWS account as it runs on an EC2
instance (you will be billed for running this).

License and Author
------------------

Author:: [Ross Timson][rosstimson]
<[ross@rosstimson.com](mailto:ross@rosstimson.com)>.

License:: Licensed under [WTFPL][wtfpl].


[rosstimson]:         https://rosstimson.com
[repo]:               https://github.com/rosstimson/chef-rosstimson-vim
[issues]:             https://github.com/rosstimson/chef-rosstimson-vim/issues
[wtfpl]:              http://www.wtfpl.net/
[vim]:                http://www.vim.org
[chefspec]:           https://github.com/sethvargo/chefspec
[foodcritic]:         https://github.com/acrmp/foodcritic
[rubocop]:            https://github.com/bbatsov/rubocop
[serverspec]:         https://github.com/serverspec/serverspec
[testkitchen]:        https://github.com/test-kitchen/test-kitchen

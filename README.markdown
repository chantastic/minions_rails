# MinionsRails

This is a Rails wrapper for the [minions.css](https://github.com/chantastic/minions.css) project.

## Installation

Add `minions_rails` to your Gemifile:

    gem 'minions_rails'

Require `minions_rails/development` in your `application.css` file:

	/*
	 *= require "minions_rails/development"
	 */

This import is *HUGE*. You're not going to want to go to production with it.

Create a local manifest and in your app and comment out everything you don't need. Use [`development.scss`](https://github.com/chantastic/minions_rails/blob/master/app/assets/stylesheets/minions_rails/development.scss) as a template.

<3 [chantastic](http://twitter.com/chantastic)

---

This project rocks and uses MIT-LICENSE.

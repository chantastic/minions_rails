# MinionsRails

This is a Rails wrapper for the [minions.css](https://github.com/chantastic/minions.css) project.

## Contents
1. [Installation](#installation)
1. [Important](#important)
1. [About minions](#about-minions)
1. [CSS vs SCSS](#css-vs-scss)
1. [Usage](#usage)
  1. [CSS (development)](#css-development)
  1. [CSS (production)](#css-production)
  1. [SCSS (development)](#scss-development)
  1. [SCSS (production)](#scss-production)

## Installation
**Add** `minions_rails` to your Gemfile and bundle:

```ruby
gem 'minions_rails'
```

## Important
[minions.css](https://github.com/chantastic/minions.css) is a huge library. There's nearly 1MB of CSS. It's not intended to be used segmentally. The `development` setups are included so you can get started quickly. Please don't use them in production.

## About minions
For more information about [minions.css](https://github.com/chantastic/minions.css), go to the library page: https://github.com/chantastic/minions.css

## CSS vs SCSS
**The `scss` version of [minions.css](https://github.com/chantastic/minions.css) allows you to customize media-query berakpoints.** By default, [minions.css](https://github.com/chantastic/minions.css) uses the Bootstrap 4 breakpoints. They look like this:

```
@xl: 1200px
@lg:  992px
@md:  768px
@sm:  544px
@xs:  320px
```

## Usage

### CSS (development)
* **Require** `minions_rails/development` in your `application.css` file:

```css
/*
 *  application.css
 *
 *= require "minions_rails/development"
 *
 */
```

**[DO NOT USE THIS IN PRODUCTION](#important).**

---

### CSS (production)
* **Require** All needed files into `application.css` from `minions_rails/css/`

```css
/*
 *  application.css
 *
 *= require "minions_rails/css/padding"
 *= require "minions_rails/css/padding-mn"
 *= require "minions_rails/css/padding-xs"
 *= require "minions_rails/css/padding-sm"
 *= require "minions_rails/css/padding-md"
 *= require "minions_rails/css/padding-lg"
 *= require "minions_rails/css/padding-xl"
 *
 * ... all the other ones you need
 */
```

*Alternatively*, you could create a `.scss` file and use `@import`. This will concatenate included files in development. This could dramatically imrove your development experience, depending on how many minions classses you're using.

---

### SCSS (development)

* **Create** a `custom-minions.scss` file
  + **Assign** expected breakpoint variables `$xl`, `$lg`, `$md`, `$sm`, and `$xs`
  + **Import** any and all minions files from `minions_rails/scss/`
* **Require** `custom-minions` into your `application.css` file

```scss
$xl: 1200;
$lg:  960;
$md:  720;
$sm:  600;
$xs:  480;

@import "minions_rails/development-scss";
```

**[DO NOT USE THIS IN PRODUCTION](#important).**

---

### SCSS (production)

* **Create** a `custom-minions.scss` file
  + **Assign** expected breakpoint variables `$xl`, `$lg`, `$md`, `$sm`, and `$xs`
  + **Import** any and all minions files from `minions_rails/scss/`
* **Require** `custom-minions` into your `application.css` file

```css
/*
 *  application.css
 *
 *= require "custom-minions"
 *
 */
```

```scss
/*
 * custom-minions.scss
 */

$xl: 1200;
$lg:  960;
$md:  720;
$sm:  600;
$xs:  480;

@import "minions_rails/scss/padding";
@import "minions_rails/scss/padding-mn";
@import "minions_rails/scss/padding-xs";
@import "minions_rails/scss/padding-sm";
@import "minions_rails/scss/padding-md";
@import "minions_rails/scss/padding-lg";
@import "minions_rails/scss/padding-xl";

/* ...and whatever else you need */
```

---

<3 [chantastic](http://twitter.com/chantastic)

This project rocks and uses MIT-LICENSE.

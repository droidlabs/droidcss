# DroidCSS

Small responsive framework with grids and couple mixins. We've took the most used mixins from [Bourbon](https://github.com/thoughtbot/bourbon) and added [960px Grids](https://github.com/nathansmith/960-grid-system/) to it. Very light, powerful and fast CSS Grid framework for you to use.

## [Grid Demo](http://droidlabs.github.io/droidcss/)

## What's under the hood?

* Normalize.css
* CSS3 Mixins
* Compiled CSS file (from SCSS)

## How to use DroidCSS within Rails/Sinatra application

#### Step 1: Set variables

Set variables if needed. Otherwise, skip to the next step.

Create a file called setup.scss in 'partials' folder and declare it right before any DroidCSS files declaration. You main SCSS (probably, it will be application.scss) file will look like this:

    @import 'partials/setup';


#### Step 2.1: Application without web-fonts (@font-face)

Import DroidCSS main file:

    @import 'droidcss';

#### Step 2.2: Application with web-fonts (@font-face)

Create a new file 'fonts.scss' in 'partials' folder. Place font-face mixins in fonts.scss file. Then import all needed files in the main scss file:

    @import 'droidcss/mixins';
    @import 'partials/fonts';
    @import 'droidcss/base';

## How to use SCSS without Rails/Sinatra application

On Mac it's easy to use it with:

* [SASS/SCSS Gem](http://sass-lang.com/download.html)
* [CodeKit](http://incident57.com/codekit/)
* [Hammer](http://www.hammerformac.com/)
* [LiveReload](http://www.livereload.com/)

Just drag&drop DroidCSS folder into the application, then point your html file to DroidCSS. For example:

    <link href="droidcss/droidcss.css" rel="stylesheet">

## Variables

All the variables can be found in partials/setup.scss file

#### asset-pipeline

Set to true if you use it in your project (default to false). If don't use it or don't know what is it about, leave it as is.

    $asset-pipeline: false;

#### fonts-path

Include path to font files with trailing slash (default is '/assets/fonts/').

    $fonts-path: '/assets/fonts/';

#### media queries

Breakpoints for mobile devices, tablets and desktop. To disable of the support of responsive layouts, just remove responsive.scss from style.scss. Here is explanation of the variables:

    $media-mobile-max: breakpoint for mobile devices (default is '767px')
    $media-tablet-min: breakpoint for tablet minimum width (default is '768px')
    $media-tablet-max: breakpoint for tablet maximum width (default is '1024px')
    $media-desktop-min: breakpoint for desktop (default is '1025px')

Media queries example:

    $media-mobile-max: 767px;
    $media-tablet-min: 768px;
    $media-tablet-max: 1024px;
    $media-desktop-min: 1025px;

#### grid-width

Default site width. For 960.gs it's 960px

    $grid-width: 960px;

#### columns-count

Select 12 or 16 columns for layout (2 types of columns are supported with 960.gs).  The default value is '12' columns.

    $columns-count: 12;

#### gutter-width

Spacing between the columns (default is '1.04166666666%' which is 10px in 960.gs).

    $gutter-width: 1.04166666666%;

#### column-width

Column width (default is 6). Don't mess with it. In 12 columns layout it's 60px (which is 6), in 16 columns layout it will be 40px (which is 4). Mixin will change it automaticly, just set column with to 12 or 16.

    $column-width: 6;

## Available mixins:

#### Box sizing:

Usage:

    @include box-sizing(border-box);

CSS output result:

    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;

#### Font-face:

Usage:

    @include font-face('MuseoSans', 'museosans-regular');
    @include font-face('MuseoSans', 'museosans-bold-italic', '700', 'italic');

CSS output result:

    @font-face {
      font-family: "MuseoSans";
      font-weight: 400;
      font-style: normal;
      src: url("/assets/fonts/museosans-regular.eot");
      src: url("/assets/fonts/museosans-regular.eot?#iefix") format("embedded-opentype"), url("/assets/fonts/museosans-regular.woff") format("woff"), url("/assets/fonts/museosans-regular.ttf") format("truetype"), url("/assets/fonts/museosans-regular.svg#MuseoSans") format("svg");
    }

    @font-face {
      font-family: "MuseoSans";
      font-weight: "700";
      font-style: "italic";
      src: url("/assets/fonts/museosans-bold-italic.eot");
      src: url("/assets/fonts/museosans-bold-italic.eot?#iefix") format("embedded-opentype"), url("/assets/fonts/museosans-bold-italic.woff") format("woff"), url("/assets/fonts/museosans-bold-italic.ttf") format("truetype"), url("/assets/fonts/museosans-bold-italic.svg#MuseoSans") format("svg");
    }

#### Gradients:

Usage:

    @include linear-gradient(#ff0000, #cc0000);

CSS output result:

    background-color: white;
    background-image: -webkit-linear-gradient(white, black);
    background-image: linear-gradient(white, black);

#### Transitions:

Usage:

    @include transition((opacity) (.2s) (linear));

CSS output result:

    -webkit-transition: opacity 0.2s linear;
    -moz-transition: opacity 0.2s linear;
    transition: opacity 0.2s linear;

#### Size:

Usage:

    @include size(100px, 200px);

CSS output result:

    width: 100px;
    height: 200px;

#### Square:

Usage:

    @include square(100px);

CSS output result:

    width: 100px;
    height: 100px;

#### Triangle:

Creates a triangle. Arguments ($size, $color, $direction)

$direction may be:

* up
* down
* left
* right
* up-right
* up-left
* down-right
* down-left

Usage:

    @include triangle(10px, #ccc, down);

CSS output result:

    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-top-color: #ccc;

#### Border-radius:

Usage:

    @include border-radius(10px);

CSS output result:

    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;

## Default classes

Default classes available in *partials/defaults.scss*:

* .hide, .hidden - hide block
* .fleft, .fright - float blocks left or right
* .text-left, .text-center, .text-right - align text left, centered or right
* .clear - clearing blocks
* .clearfix - clearfix for blocks

## License

Licenced under MIT: <http://opensource.org/licenses/MIT>.

## Got questions?

Feel free to contact us regarding DroidCSS via [twitter](http://twitter.com/droidlabs) or [email](mailto:ilya@droidlabs.pro).

## Thanks for using DroidCSS

Cheers,
[DroidLabs](http://droidlabs.pro).

# DroidCSS [![Roadchange](https://roadchange.com/droidlabs/droidcss/badge.png)](https://roadchange.com/droidlabs/droidcss) 

Small responsive framework with grids and couple mixins. We've took the most used mixins from [Bourbon](https://github.com/thoughtbot/bourbon) and added [960px Grids](https://github.com/nathansmith/960-grid-system/) to it. Very light, powerful and fast CSS Grid framework for you to use.

## [Grid Demo](http://droidlabs.github.io/droidcss/)

## What's under the hood?

* Normalize.css
* CSS3 Mixins
* Compiled CSS file (from SCSS)

## How to use DroidCSS within Rails/Sinatra application

#### Step 1: Include gem

Add DroidCSS to your Gemfile & run 'bundle install' in the terminal:

    gem 'droidcss'

#### Step 2: Set variables

Set variables if needed. Otherwise, skip to the next step.

Create a file called setup.scss in 'partials' folder and declare it right before any DroidCSS files declaration. You main SCSS (probably, it will be application.scss) file will look like this:

    @import 'partials/setup';


#### Step 3.1: Application without web-fonts (@font-face)

Import DroidCSS main file:

    @import 'droidcss';

#### Step 3.2: Application with web-fonts (@font-face)

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

#### assetPipeline

Set to true if you use it in your project (default to false). If don't use it or don't know what is it about, leave it as is.

    $assetPipeline: false;

#### fontsPath

Include path to font files with trailing slash (default is '/assets/fonts/').

    $fontsPath: '/assets/fonts/';

#### media queries

Breakpoints for mobile devices, tablets and desktop. To disable of the support of responsive layouts, just remove responsive.scss from style.scss. Here is explanation of the variables:

    $mediaMobileMax: breakpoint for mobile devices (default is '767px')
    $mediaTabletMin: breakpoint for tablet minimum width (default is '768px')
    $mediaTabletMax: breakpoint for tablet maximum width (default is '1024px')
    $mediaDesktopMin: breakpoint for desktop (default is '1025px')

Media queries example:

    $mediaMobileMax: 767px;
    $mediaTabletMin: 768px;
    $mediaTabletMax: 1024px;
    $mediaDesktopMin: 1025px;

#### gridWidth

Default site width. For 960.gs it's 960px

    $gridWidth: 960px;

#### columnsCount

Select how many columns in the layout you would like to have (2 types of columns are supported with 960.gs by default: 12 and 16). The default value is '12' columns.

    $columnsCount: 12;

#### gutterWidth

Spacing between the columns (default is '1.04166666666%' which is 10px in 960.gs).

    $gutterWidth: 1.04166666666%;

## Available mixins:

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
      font-weight: 700;
      font-style: italic;
      src: url("/assets/fonts/museosans-bold-italic.eot");
      src: url("/assets/fonts/museosans-bold-italic.eot?#iefix") format("embedded-opentype"), url("/assets/fonts/museosans-bold-italic.woff") format("woff"), url("/assets/fonts/museosans-bold-italic.ttf") format("truetype"), url("/assets/fonts/museosans-bold-italic.svg#MuseoSans") format("svg");
    }

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

Creates a triangle. Arguments: ($size, $color, $direction)

$direction may be:

* up
* down
* left
* right

Usage:

    @include triangle(10px, #ccc, down);

CSS output result:

    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-top-color: #ccc;

#### Placeholder:

Usage:

    @include placeholder(#ccc, italic);

CSS output result:

    :-moz-placeholder            { color: #ccc; font-style:italic;} // Firefox 4-18
    ::-moz-placeholder           { color: #ccc; font-style:italic; } // Firefox 19+
    :-ms-input-placeholder       { color: #ccc; font-style:italic; } // Internet Explorer 10+
    ::-webkit-input-placeholder  { color: #ccc; font-style:italic; } // Safari and Chrome

Please note. This function can be used only within selector! Example:

    input { @include placeholder(#ccc, italic); }

## Default classes

Default classes available in *partials/defaults.scss*:

* .hide, .hidden - hide block
* .pull-left, .pull-right - float blocks left or right
* .text-left, .text-center, .text-right - align text left, centered or right
* .clear - clearing blocks
* .clearfix - clearfix for blocks

## Contributors

Thanks for contributing into the gem, [Alexander](https://github.com/selivandex)!

## License

Licenced under MIT: <http://opensource.org/licenses/MIT>.

## Got questions?

Feel free to contact us regarding DroidCSS via [twitter](http://twitter.com/droidlabs) or [email](mailto:ilya@droidlabs.pro).

## Thanks for using DroidCSS

Cheers,
[DroidLabs](http://droidlabs.pro).

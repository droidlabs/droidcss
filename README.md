# DroidCSS

Small responsive framework with grids and couple mixins. We've took the most used mixins from [Bourbon](https://github.com/thoughtbot/bourbon) and added [960px Grids](https://960.gs) to it. Very light, powerful and fast CSS Grid framework for you to use.

## What's under the hood?

* CSS Reset
* CSS3 Mixins
* Compiled CSS file (from SCSS)

## How to use with SCSS

On Mac it's easy to use it with:

* [SASS/SCSS Gem](http://sass-lang.com/download.html)
* [CodeKit](http://incident57.com/codekit/)
* [Hammer](http://www.hammerformac.com/)
* [LiveReload](http://www.livereload.com/)

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
    @include box-sizing(border-box);
#### Font-face:
    @include font-face('MuseoSans', 'museosans-bold-italic', '700', 'italic');
#### Gradients:
    @include linear-gradient(#ff0000, #cc0000);
#### Transitions:
    @include transition((opacity) (.2s) (linear));

## License

Licenced under MIT: <http://opensource.org/licenses/MIT>.

## Got questions?

Feel free to contact us regarding DroidCSS via [twitter](http://twitter.com/droidlabs) or [email](mailto:ilya@droidlabs.pro).

## Thanks for using DroidCSS

Cheers,
[DroidLabs](http://droidlabs.pro).
# DroidCSS

Small responsive framework with grids and couple mixins. We've took the most used mixins from [Bourbon](https://github.com/thoughtbot/bourbon) and added [960px Grids](https://960.gs)

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

### Variables

All the variables can be found in partials/setup.scss file

* $asset-pipeline: set to true if you use it in your project (default to false)
* $fonts-path: include path to font files with trailing slash (default is '/assets/fonts/')
* $media-mobile-max: breakpoint for mobile devices (default is '767px')
* $media-tablet-min: breakpoint for tablet minimum width (default is '768px')
* $media-tablet-max: breakpoint for tablet maximum width (default is '1024px')
* $media-desktop-min: breakpoint for desktop (default is '1025px')
* $grid-width: site width (default is '960px')
* $columns-count: select 12 or 16 columns (default is '12')
* $gutter-width: spacing between the columns (default is '1.04166666666%' which is 10px in 960.gs)
* $column-width: column width (default is 6). Don't mess with it. In 12 columns layout it's 60px (which is 6), in 16 columns layout it will be 40px (which is 4). Mixin will change it automaticly, just set column with to 12 or 16.

### Available mixins:

#### Box sizing:
    @include box-sizing(border-box);
#### Font-face:
    @include font-face('MuseoSans', 'museosans-bold-italic', '700', 'italic');
#### Gradients:
    @include linear-gradient(#ff0000, #cc0000);
#### Transitions:
    @include transition((opacity) (.2s) (linear));

## License

Licenced under MIT: <http://opensource.org/licenses/MIT>

## Got questions?

Feel free to contact us regarding DroidCSS via [twitter](http://twitter.com/droidlabs) or [email](mailto:ilya@droidlabs.pro)

## Thanks for using DroidCSS

Cheers,
[DroidLabs](http://droidlabs.pro).
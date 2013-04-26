image-filter-categories
=======================

/ImageFilterUtils contains categories on UIImage and UIImageView for applying CIFilters.
In addition to being able to apply CIFilters you can use some of the included presets.

The sample project allows you to test this functionality.

Installation
------------
Add the CIFilter framework to your project and #import "UIImageView+Filter.h".

Sample Usage
------------
To turn an image black and white you could call:
[self.imageView applyFilterWithPreset:ImageFilterPresetBlackAndWhite];

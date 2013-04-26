//
//  UIImage+Filter.h
//  Updates
//
//  Created by Nebojsa Petrovic on 4/16/13.
//  Copyright (c) 2013 Nebojsa Petrovic. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    ImageFilterPresetBlackAndWhite = 0,
    ImageFilterPresetSepiaTone
} ImageFilterPreset;

@interface UIImage (Filter)

/*
 Asynchronously applies 'filter' to the target image and
 returns the filtered image in the block.
 The target image remains unchanged.
 */
- (void)applyFilter:(CIFilter *)filter
         completion:(void (^)(UIImage *filteredImage))completionBlock;

/*
 Returns a UIImage from the filter.
 */
+ (UIImage *)imageWithFilter:(CIFilter *)filter;

/*
 Returns a filter using a common preset.
 */
- (CIFilter *)filterWithPreset:(ImageFilterPreset)preset;

@end

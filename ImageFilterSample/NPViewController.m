//
//  NPViewController.m
//  ImageFilterSample
//
//  Created by Nebojsa Petrovic on 4/25/13.
//  Copyright (c) 2013 Nebojsa Petrovic. All rights reserved.
//

#import "NPViewController.h"
#import "UIImageView+Filter.h"

@interface NPViewController ()
@property (nonatomic) NSArray *filterPresets;
@end

@implementation NPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.imageView.image = [UIImage imageNamed:@"ferrari.jpg"];
    
    // Setup table view
    self.filterPresets = @[@"None", @"Black & White", @"Sepia"];
    self.filterTableView.delegate = self;
    self.filterTableView.dataSource = self;
    [self.filterTableView registerClass:[UITableViewCell class]
                 forCellReuseIdentifier:@"UITableViewCell"];
}

#pragma mark - UITableView
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: // None
            [self.imageView removeFilter];
            break;
        case 1: // Black & White
            [self.imageView applyFilterWithPreset:ImageFilterPresetBlackAndWhite
                                         animated:self.animationSwitch.on
                                       completion:nil];
            break;
        case 2: // Sepia
            [self.imageView applyFilterWithPreset:ImageFilterPresetSepiaTone
                                         animated:self.animationSwitch.on
                                       completion:nil];
            break;
        default:
            break;
    }
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.filterPresets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = [self.filterPresets objectAtIndex:indexPath.row];
    return cell;
}

@end

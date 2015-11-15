//
//  Playlist.h
//  Algorhythm
//
//  Created by Ash Ryan Arnwine on 11/15/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playListTitle;
@property (strong, nonatomic) NSString *playListDescription;
@property (strong, nonatomic) UIImage *playListIcon;
@property (strong, nonatomic) UIImage *playListIconLarge;
@property (strong, nonatomic) NSArray *playListArtists;
@property (strong, nonatomic) UIColor *backgroundColor;

- (instancetype)initWithIndex:(NSUInteger)index;

@end

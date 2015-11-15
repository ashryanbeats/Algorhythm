//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Ash Ryan Arnwine on 11/15/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end

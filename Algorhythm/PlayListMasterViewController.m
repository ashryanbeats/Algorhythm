//
//  ViewController.m
//  Algorhythm
//
//  Created by Ash Ryan Arnwine on 11/15/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

#import "PlayListMasterViewController.h"
#import "PlayListDetailViewController.h"
#import "Playlist.h"

@interface PlayListMasterViewController ()

@end

@implementation PlayListMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image = playlist.playListIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        // do something
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlayListDetailViewController *playListDetailViewController = (PlayListDetailViewController *)segue.destinationViewController;
            
            playListDetailViewController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}


@end

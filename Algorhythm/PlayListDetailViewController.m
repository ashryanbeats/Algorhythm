//
//  PlayListDetailViewController.m
//  Algorhythm
//
//  Created by Ash Ryan Arnwine on 11/15/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

#import "PlayListDetailViewController.h"
#import "Playlist.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playListIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playListTitle;
        self.playlistDescription.text = self.playlist.playListDescription;
        
        self.playlistArtist0.text = self.playlist.playListArtists[0];
        self.playlistArtist1.text = self.playlist.playListArtists[1];
        self.playlistArtist2.text = self.playlist.playListArtists[2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

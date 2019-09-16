//
//  RadioViewController.m
//  dia_de_victoria_radio_swift
//
//  Created by Angel Gabriel Ascanio Duran on 8/24/19.
//  Copyright © 2019 Angel Gabriel Ascanio Duran. All rights reserved.
//

#import "RadioViewController.h"

@interface RadioViewController ()

@end

@implementation RadioViewController
@synthesize player;
@synthesize playerItem;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Init Page
    [self play];
}

- (void)play {
    playerItem = [AVPlayerItem playerItemWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://51.15.160.78:8865/stream"]]];
    
    [self.playerItem addObserver:self forKeyPath:@"timedMetadata" options:(NSKeyValueObservingOptions)NSKeyValueObservingOptionNew context:nil];
    
    player = [AVPlayer playerWithPlayerItem:playerItem];
    
    [player play];
}

- (IBAction)btnPlay:(id)sender {
    [self play];
}

- (IBAction)btnStop:(id)sender {
    
    [player pause];
    
    trackDetails.text = [NSString stringWithFormat:@"%s", "Paused"];
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"timedMetadata"])
    {
        AVPlayerItem *_playerItem = object;
        for (AVMetadataItem *metadata in _playerItem.timedMetadata)
        {
            NSLog(@"metaKey: %@", metadata.key);
            if ([[metadata.key description] isEqualToString:@"title"]) {
                trackDetails.text = [NSString stringWithFormat:@"%@", metadata.stringValue];
            }
        }
    }
}

@end

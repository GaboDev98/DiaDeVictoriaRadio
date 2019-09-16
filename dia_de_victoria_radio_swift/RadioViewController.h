//
//  RadioViewController.h
//  dia_de_victoria_radio_swift
//
//  Created by Angel Gabriel Ascanio Duran on 8/24/19.
//  Copyright © 2019 Angel Gabriel Ascanio Duran. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RadioViewController : UIViewController <AVPlayerViewControllerDelegate> {
    
    IBOutlet UILabel *trackDetails;
    
}

@property(nonatomic, strong) AVPlayer *player;
@property(nonatomic, strong) AVPlayerItem *playerItem;

- (void)btnPlay:(id)sender;
- (IBAction)btnPlay:(id)sender;
- (IBAction)btnStop:(id)sender;

@end


//
//  TDDPracticeAppDelegate.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TDDPracticeAppDelegate : NSObject <NSApplicationDelegate> {
@private

    NSPanel *NSSnapShotViewerWindow;
    NSImageView *NSSnapShotViewer;
}

@property (assign) IBOutlet NSPanel *NSSnapShotViewerWindow;
@property (assign) IBOutlet NSImageView *NSSnapShotViewer;


@end

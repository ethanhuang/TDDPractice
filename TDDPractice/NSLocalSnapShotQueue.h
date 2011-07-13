//
//  _localSnapShotQueue.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSUser.h"
#import "NSSnapShot.h"


@interface NSLocalSnapShotQueue : NSObject {
@private
    NSUser *registeredLocalUser;
    NSMutableArray *localSnapShots;
}


+(NSLocalSnapShotQueue *)getLocalSnapShotQInstance;
-(long)getNoOfSnapShotsInQ;

-(void)addASnapShot:(NSSnapShot*)aSnapShot;

@property (assign) NSUser *registeredLocalUser;
@property (assign) NSMutableArray *localSnapShots;

@end

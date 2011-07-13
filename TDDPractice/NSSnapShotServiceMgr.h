//
//  NSSnapShotServiceMgr.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSSnapShotAgent.h"
#import "NSSnapShot.h"
#import "NSLocalSnapShotQueue.h"


@interface NSSnapShotServiceMgr : NSObject {
@private
    //static NSArray *localIncomeSnapShotCash;
    
}

+(NSSnapShotServiceMgr *)getServiceMgrInstance;

-(BOOL)eventNewSnapShotReceivedHandler:(NSNotification *) newSnapShotReceivedNotification;

-(void)pushASnapShotToQ:(NSSnapShot *)aSnapShot;

@end

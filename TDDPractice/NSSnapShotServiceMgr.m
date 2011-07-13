//
//  NSSnapShotServiceMgr.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//



#import "NSSnapShotServiceMgr.h"
#import "NSSnapShotAgent.h"
#import "NSUser.h"
#import "NSLocalSnapShotQueue.h"




@implementation NSSnapShotServiceMgr


static NSSnapShotServiceMgr * _globalServiceMgrInstance = nil;


+(NSSnapShotServiceMgr *)getServiceMgrInstance{
    @synchronized([NSSnapShotServiceMgr class])
	{
		if (!_globalServiceMgrInstance){
			[[self alloc] init];
        }
		return _globalServiceMgrInstance;
	}
    
	return nil;
}

- (id)init
{
    self = [super init];
    if (self) {
        
        
    }
    
    return self;
}

+(id)alloc
{
	@synchronized([NSSnapShotServiceMgr class])
	{
		NSAssert(_globalServiceMgrInstance == nil, @"Attempted to allocate a second instance of a singleton.");
		_globalServiceMgrInstance = [super alloc];
		return _globalServiceMgrInstance;
	}
    
	return nil;
}


- (void)dealloc
{    
    [super dealloc];
}

-(void)pushASnapShotToQ:(NSSnapShot *)aSnapShot{
    NSLocalSnapShotQueue *localQ = [NSLocalSnapShotQueue getLocalSnapShotQInstance];
    [localQ addASnapShot:aSnapShot];
    [[NSNotificationCenter defaultCenter]
    postNotificationName:@"NewSnapShotAddedToLocalQ" object:self];
}

-(BOOL)eventNewSnapShotReceivedHandler:(NSNotification *) newSnapShotReceivedNotification{
    NSLog(@"********* New SnapShot found on local Q -- New img received...");
    return TRUE;
}

@end

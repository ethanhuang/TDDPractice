//
//  _localSnapShotQueue.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSLocalSnapShotQueue.h"
#import "NSSnapShot.h"


@implementation NSLocalSnapShotQueue

@synthesize registeredLocalUser;
@synthesize localSnapShots;

static NSLocalSnapShotQueue * _globalSnapShotQ = nil;

+(NSLocalSnapShotQueue *)getLocalSnapShotQInstance{
    @synchronized([NSLocalSnapShotQueue class])
	{
		if (!_globalSnapShotQ)
			[[self alloc] init];
        
		return _globalSnapShotQ;
	}
    
	return nil;
}

-(void)addASnapShot:(NSSnapShot*)aSnapShot{
    [self.localSnapShots addObject:aSnapShot];
}

-(long)getNoOfSnapShotsInQ{
    if (self.localSnapShots) {
         return [self.localSnapShots count];
    }else return -1;
}


+(id)alloc
{
	@synchronized([NSLocalSnapShotQueue class])
	{
		NSAssert(_globalSnapShotQ == nil, @"Attempted to allocate a second instance of a singleton.");
		_globalSnapShotQ = [super alloc];
		return _globalSnapShotQ;
	}
    
	return nil;
}

- (id)init
{
    self = [super init];
    if (self) {
        registeredLocalUser = [[NSUser alloc] init];
        localSnapShots = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)dealloc
{
    //[self.registeredLocalUser release];
    //[self.localSnapShots release];
    [super dealloc];
}

@end

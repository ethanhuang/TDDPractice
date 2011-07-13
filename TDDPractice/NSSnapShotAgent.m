//
//  NSSnapShotAgent.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShotAgent.h"
#import "NSUser.h"


@implementation NSSnapShotAgent

static NSSnapShotAgent * _globalAgentInstance = nil;

+(NSSnapShotAgent *)getAgtInstance{
    @synchronized([NSSnapShotAgent class])
	{
		if (!_globalAgentInstance)
			[[self alloc] init];
        
		return _globalAgentInstance;
	}
    
	return nil;
}

+(id)alloc
{
	@synchronized([NSSnapShotAgent class])
	{
		NSAssert(_globalAgentInstance == nil, @"Attempted to allocate a second instance of a singleton.");
		_globalAgentInstance = [super alloc];
		return _globalAgentInstance;
	}
    
	return nil;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        
        [self listenToSnapShotReceivedEvent];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}



-(void)listenToSnapShotReceivedEvent{
    [[NSNotificationCenter defaultCenter]  addObserver:self
											  selector:@selector(aNewSnapShotReceived:)
												  name:@"NewSnapShotAddedToLocalQ"
												object:nil];	
}

-(void)aNewSnapShotReceived:(NSNotification *)newSnapShotReceivedNotification{
    NSLog(@"********************* NOTIFICATION newSnapShotReceivedNotification RECEIVED***** Agent aNewSnapShotReceived CALLED!!**** ");
}

@end

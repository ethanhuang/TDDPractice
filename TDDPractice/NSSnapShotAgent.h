//
//  NSSnapShotAgent.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSSnapShot.h"


@interface NSSnapShotAgent : NSObject {
@private
    
}

+(NSSnapShotAgent *)getAgtInstance;

//-(NSSnapShot *)retreiveASnapShot;

-(void)listenToSnapShotReceivedEvent;
-(void)aNewSnapShotReceived:(NSNotification *)newSnapShotReceivedNotification;

@end

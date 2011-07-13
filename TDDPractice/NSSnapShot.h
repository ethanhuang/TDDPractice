//
//  NSSnapShot.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSUser.h"


@interface NSSnapShot : NSImage {
@private
    NSUser *snapShotSender;
    NSUser *snapShotReceiver;
    NSDate *snapShotSentDate;
    NSDate *snapShotReceivedDate;
}

-(id)init:(NSString *)imgFilePath:(NSUser *)sender:(NSUser *)receiver:(NSDate *)sentDate:(NSDate *)receivedDate;

-(void)initWithSender:(NSUser *)aSender;
-(void)initWithReceiver:(NSUser *)aReceiver;
-(void)initWithSentDate:(NSDate *)aSentDate;
-(void)initWithReceivedDate:(NSDate *)aReceivedDate;

@property (assign) NSUser *snapShotSender;
@property (assign) NSUser *snapShotReceiver;
@property (assign) NSDate *snapShotSentDate;
@property (assign) NSDate *snapShotReceivedDate;

@end

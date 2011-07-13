//
//  NSSnapShot.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShot.h"


@implementation NSSnapShot

@synthesize snapShotSender;
@synthesize snapShotReceiver;
@synthesize snapShotSentDate;
@synthesize snapShotReceivedDate;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(id)init:(NSString *)imgFilePath:(NSUser *)sender:(NSUser *)receiver:(NSDate *)sentDate:(NSDate *)receivedDate{
    self = [self initWithContentsOfFile:imgFilePath];
    if (self) {
        [self initWithSender:sender];
        [self initWithReceiver:receiver];
        [self initWithSentDate:sentDate];
        [self initWithReceivedDate:receivedDate];
    }
    return self;
}

-(void)initWithSender:(NSUser *)aSender{
    if (aSender) {
        [self setSnapShotSender:aSender];
    }
}

-(void)initWithReceiver:(NSUser *)aReceiver{
    if (aReceiver) {
        [self setSnapShotReceiver:aReceiver];
    }
}

-(void)initWithSentDate:(NSDate *)aSentDate{
    if (aSentDate) {
        [self setSnapShotSentDate:aSentDate];
    }
}

-(void)initWithReceivedDate:(NSDate *)aReceivedDate{
    if (aReceivedDate) {
        [self setSnapShotReceivedDate:aReceivedDate];
    }
}


- (void)dealloc
{
    [self.snapShotSender dealloc];
    [self.snapShotReceiver dealloc];
    [self.snapShotSentDate dealloc];
    [self.snapShotReceivedDate dealloc];
    [super dealloc];
}

@end

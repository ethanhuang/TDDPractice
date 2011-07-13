//
//  NSSnapShotSrviceMgrTestSuite.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShotSrviceMgrTestSuite.h"
#import "NSSnapShot.h"
#import "NSSnapShotServiceMgr.h"
#import "NSLocalSnapShotQueue.h"


@implementation NSSnapShotSrviceMgrTestSuite
NSSnapShotServiceMgr *serviceMgr;
NSLocalSnapShotQueue *localQ;
NSSnapShotAgent *agent;

NSString *imgFilePath;
NSUser *snapShotSender;
NSUser *snapShotReceiver;
NSDate *sentDate;
NSDate *receivedDate;
NSSnapShot *testSnapShot;


- (void)setUp
{
    [super setUp];
    serviceMgr = [NSSnapShotServiceMgr getServiceMgrInstance];
    STAssertNotNil(serviceMgr, @"*** Get NSSnapShotAgent instance = nil...");
    

    localQ = [NSLocalSnapShotQueue getLocalSnapShotQInstance];
    STAssertNotNil(localQ, @"*** Get NSSnapShotAgent instance = nil...");    

    
    agent = [NSSnapShotAgent getAgtInstance];
    STAssertNotNil(localQ, @"*** Get NSSnapShotAgent instance = nil...");   
    
    imgFilePath = @"/Users/huangethan/github/TDDPractice/ss1.tiff";
    snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:snapShotReceiver:sentDate:receivedDate];
    STAssertFalse(testSnapShot == nil, @"**** SnapShot object initialized with all valid parameters FAILED.***");
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


-(void)testPushNewSnapShotToQ{
    long qLengthBefore = [localQ getNoOfSnapShotsInQ];
    [serviceMgr pushASnapShotToQ:testSnapShot];
    long qLengthAfter = [localQ getNoOfSnapShotsInQ];
    STAssertTrue(qLengthAfter == (qLengthBefore+1), @"************** local Q length after pushing a snapshot to Q: %d", qLengthAfter, @"; before: %d",qLengthBefore);
}

/*
-(void)testEventNewSnapShotReceivedHandler_OneNewSnapShotPushedToQ{
    [serviceMgr pushASnapShotToQ:testSnapShot];
    
}
 */


@end

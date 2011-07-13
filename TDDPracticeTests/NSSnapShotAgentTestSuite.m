//
//  NSSnapShotAgentTestSuite.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShotAgentTestSuite.h"
#import "NSSnapShotAgent.h"
#import "NSUser.h"
#import "NSSnapShot.h"
#import "NSSnapShotServiceMgr.h"


@implementation NSSnapShotAgentTestSuite

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
    
    STAssertNotNil(testSnapShot, @"**** SnapShot object initialized with all valid parameters FAILED.***");
 }

- (void)tearDown
{
    // Tear-down code here.
    //[imgFilePath release];
    //[snapShotSender release];
    //[snapShotReceiver release];
    //[sentDate release];
    //[receivedDate release];
    //[testSnapShot release];
    [super tearDown];
}

-(void)testRetreiveASnapShotFromAgentHappyPath{

}

- (void)testGetsNewSnapShotNotificationHappyPath{
  
}

@end

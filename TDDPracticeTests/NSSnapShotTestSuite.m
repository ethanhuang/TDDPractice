//
//  NSSnapShotTests.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShotTestSuite.h"



@implementation NSSnapShotTestSuite

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testNewSnapShotWithValidParameters{
    NSString *imgFilePath = @"/Users/huangethan/github/TDDPractice/ss1.tiff";
    NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot * testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:snapShotReceiver:sentDate:receivedDate];
    STAssertFalse(testSnapShot == nil, @"**** SnapShot object initialized with all valid parameters FAILED.***");
}

-(void)testNewSnapShotWithImgNotFound{
    NSString *imgFilePath = @"/Users/huangethan/github/local/TDDPractice/TDDPractice/ss2.tiff";
    NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot *testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:snapShotReceiver:sentDate:receivedDate];
    STAssertTrue(testSnapShot == nil, @"**** SnapShot object initialized with img NOT FOUND...");
}

-(void)testNewSnapShotWithNilSender{
    NSString *imgFilePath = @"/Users/huangethan/github/local/TDDPractice/TDDPractice/ss1.tiff";
    //NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot * testSnapShot = [[NSSnapShot alloc] init:imgFilePath:nil:snapShotReceiver:sentDate:receivedDate];
    STAssertTrue(testSnapShot.snapShotSender == nil, @"**** SnapShot object initialized with Nil Sender...");
}

-(void)testNewSnapShotWithNilReceiver{
    NSString *imgFilePath = @"/Users/huangethan/github/local/TDDPractice/TDDPractice/ss1.tiff";
    NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    //NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot * testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:nil:sentDate:receivedDate];
    STAssertTrue(testSnapShot.snapShotReceiver == nil, @"**** SnapShot object initialized with Nil Receiver...");
}

-(void)testNewSnapShotWithNilSentDate{
    NSString *imgFilePath = @"/Users/huangethan/github/local/TDDPractice/TDDPractice/ss1.tiff";
    NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    //NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot * testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:snapShotReceiver:nil:receivedDate];
    STAssertTrue(testSnapShot.snapShotSentDate == nil, @"**** SnapShot object initialized with Nil SentDate...");
}

-(void)testNewSnapShotWithNilReceivedDate{
    NSString *imgFilePath = @"/Users/huangethan/github/local/TDDPractice/TDDPractice/ss1.tiff";
    NSUser *snapShotSender = [[NSUser alloc] init:@"ethan@google.com" :@"192.168.0.1"];
    NSUser *snapShotReceiver = [[NSUser alloc] init:@"huang@google.com" :@"10.9.9.23"];
    NSDate *sentDate = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    //NSDate *receivedDate = [[NSDate alloc] initWithTimeIntervalSinceNow:10000];
    NSSnapShot * testSnapShot = [[NSSnapShot alloc] init:imgFilePath:snapShotSender:snapShotReceiver:sentDate:nil];
    STAssertTrue(testSnapShot.snapShotReceivedDate == nil, @"**** SnapShot object initialized with Nil SentDate...");
}

@end

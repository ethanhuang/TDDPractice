//
//  NSUserTestSuite.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSUserTestSuite.h"
#import "NSUser.h"
#import "NSSnapShot.h"


@implementation NSUserTestSuite

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

-(void)testNewNSUserWithValidParameters{
    NSString *emailAddress = @"ethan@google.com";
    NSString *IPAddress = @"127.0.0.1";
    NSUser *testUser = [[NSUser alloc] init:emailAddress :IPAddress];
    STAssertTrue(testUser.eMailAddress == emailAddress, @"---------- NSUser object with valid parameters is not a NULL. e-mail: ", testUser.eMailAddress);
    STAssertTrue(testUser.IPAddress == IPAddress,@"--------- NSUser object with valid parameters is not a NULL. IP: %@", testUser.IPAddress);
}

-(void)testNewNSUserWithInvalidEMailAdd{
    NSArray *inValidEMailAddresses;
    inValidEMailAddresses = [NSArray arrayWithObjects:@"ethan",@"ethan@",@"ethan@google",@"ethan@google.com.cn.zh",@"ethan@.come",@"ethan@.com.cn",@"ethan@.com.cn.zj",@"@google.com",@"@google.com.cn",@"@google.com.cn.zj", nil];
    long count = [inValidEMailAddresses count];
    BOOL invalidEMailAddressDetermined = FALSE;
    NSUser *testUser;
    NSString *tmp;
    for (int i=0; i<count; i++) {
        tmp = [inValidEMailAddresses objectAtIndex:i];
        testUser = [[NSUser alloc] init:tmp :@"127.0.0.1"];
        if (testUser.eMailAddress == tmp) {
            NSLog(@"-----NSUser initialized with invalid e-mail address: %@", tmp);
            invalidEMailAddressDetermined = TRUE;
        }
    }
    STAssertTrue(invalidEMailAddressDetermined, @"----- NSUser initialized with invalid e-mail address...");
}

-(void)testNewNSUserWithInvalidIPAdd{
    NSArray *inValidIPAddresses;
    inValidIPAddresses = [NSArray arrayWithObjects:@"abc",@"abc.eft",@"123",@"123.123.123",@"299.0.0.299",@"299.299.299",@"10.0.0.299",@"127.0.0.",@"abc:999:00:", nil];
    long count = [inValidIPAddresses count];
    BOOL invalidIPAddressDetermined = FALSE;
    NSUser *testUser;
    NSString *tmp;
    for (int i=0; i<count; i++) {
        tmp = [inValidIPAddresses objectAtIndex:i];
        testUser = [[NSUser alloc] init:@"ethan@google.com":tmp];
        if (testUser.IPAddress == tmp) {
            NSLog(@"-----NSUser initialized with invalid IP address: %@", tmp);
            invalidIPAddressDetermined = TRUE;
        }
    }
    STAssertTrue(invalidIPAddressDetermined, @"----- NSUser initialized with invalid IP address...");
}


@end

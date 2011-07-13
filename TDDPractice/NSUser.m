//
//  USUser.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSUser.h"
#import "NSSnapShotValidator.h"



@implementation NSUser

@synthesize UUID;
@synthesize eMailAddress;
@synthesize IPAddress;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (id) init:(NSString *)AnEMailAddress:(NSString *)AnIPAddress{
    self = [super init];
    [self initWithEMailAddress:AnEMailAddress];
    [self initWithIPAddress:AnIPAddress];
    return self;
}

- (void) initWithEMailAddress:(NSString *)anEmailAddress{

    if ([NSSnapShotValidator validEMailAddress:anEmailAddress]) {
        [self setEMailAddress:anEmailAddress];
    }else self = nil;
}

- (void) initWithIPAddress:(NSString *) anIPAddress{
    if ([NSSnapShotValidator validIPAddress:anIPAddress]) {
        [self setIPAddress:anIPAddress];
    }else self = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end

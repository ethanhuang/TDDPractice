//
//  NSSnapShotValidator.m
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSSnapShotValidator.h"


@implementation NSSnapShotValidator

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

+ (BOOL)validEMailAddress:(NSString *)anEmailAddress{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"; 
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex]; 
    return [emailTest evaluateWithObject:anEmailAddress];
}

+ (BOOL)validIPAddress:(NSString *)anIPAddress{
    NSString *IPRegex = @"^(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])$"; 
    NSPredicate *IPTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", IPRegex]; 
    return [IPTest evaluateWithObject:anIPAddress];
}

- (void)dealloc
{
    [super dealloc];
}

@end

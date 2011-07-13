//
//  USUser.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSSnapShotValidator.h"


@interface NSUser : NSObject {
@private
    NSString *UUID;
    NSString *eMailAddress;
    NSString *IPAddress;
}

- (id) init:(NSString *)AnEeMailAddress:(NSString *)AnIPAddress;
- (void) initWithEMailAddress:(NSString *)anEmailAddress;
- (void) initWithIPAddress:(NSString *) anIPAddress;

@property (assign) NSString *UUID;
@property (assign) NSString *eMailAddress;
@property (assign) NSString *IPAddress;

@end

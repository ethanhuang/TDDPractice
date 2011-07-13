//
//  NSSnapShotValidator.h
//  TDDPractice
//
//  Created by Ethan Huang on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSSnapShotValidator : NSObject {
@private
    
}

+ (BOOL)validEMailAddress:(NSString *)anEmailAddress;
+ (BOOL)validIPAddress:(NSString *)anIPAddress;

@end

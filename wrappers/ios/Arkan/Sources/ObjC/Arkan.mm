//
//  Arkan.m
//  
//
//  Created by Denis Sologub on 21.06.2022.
//

#import "Arkan.h"
#import <arkan>

@interface Greeting ()

- (NSString*)greeting {
    std::string greet = arkan::greeting();
    return [NSString stringWithUTF8String:greet.c_str()];
}

@end

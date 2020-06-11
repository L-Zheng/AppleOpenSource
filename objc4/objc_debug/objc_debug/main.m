//
//  main.m
//  objc_debug
//
//  Created by EM on 2020/6/11.
//  Copyright © 2020 EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@end
@implementation Person
+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [super allocWithZone:zone];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person alloc];
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

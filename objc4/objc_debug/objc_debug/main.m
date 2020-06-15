//
//  main.m
//  objc_debug
//
//  Created by EM on 2020/6/11.
//  Copyright © 2020 EM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface Person : NSObject{
    char b;  // 1字节
    double d;  // 8字节
    int a;  // 4字节
    short c;  // 2字节
    NSString *aaa;
}
@property (nonatomic,copy) NSString *lbz_name;
@end
@implementation Person
@end

@interface Student : Person
@end
@implementation Student
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [Person alloc];
        
        Student *s1 = [Student alloc];
        // 获取类
        Class c1 = object_getClass(s1);
        Class sc1 = class_getSuperclass(c1);
        // 获取元类
        Class m1 = object_getClass(c1);
        Class sm1 = class_getSuperclass(m1);
        // 获取NSObject元类
        Class rm1 = object_getClass(m1);
        Class srm1 = class_getSuperclass(rm1);
        // 获取NSObject元类的元类
        Class rmrm1 = object_getClass(rm1);
        Class srmrm1 = class_getSuperclass(rmrm1);
        
        Class sob1 = class_getSuperclass([NSObject class]);
        
        
        Student *s2 = [Student alloc];
        
        // 对象内存
//        Person *p1 = [Person alloc];
//        Person *p2 = [Person alloc];
//        /** 获取类内存
//         objc源码：class函数内部实际调用了object_getClass
//         - (Class)class {
//             return object_getClass(self);
//         }
//         */
//        Class c1 = p1.class;
//        Class c2 = p2.class;
//        // 获取元类内存
//        Class m1 = object_getClass(c1);
//        Class m2 = object_getClass(c2);
//        /**
//         0x101916e00  0x101916d80  对象内存
//         0x100002130  0x100002130  类内存
//         0x100002108  0x100002108  元类内存
//         */
//        NSLog(@"\n%p  %p\n%p  %p\n%p  %p",p1,p2,c1,c2,m1,m2);
        
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

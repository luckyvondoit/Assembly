//
//  main.m
//  01-AT&T
//
//  Created by 小码哥 on 2017/11/11.
//  Copyright © 2017年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

long sum(long a, long b, long c, long d, long e, long f, long g, long h, long i, long j, long k)
{
    return a + b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int c = sum(LONG_MAX, LONG_MAX, LONG_MAX, LONG_MAX, LONG_MAX, LONG_MAX, LONG_MAX
                    , LONG_MAX, LONG_MAX, LONG_MAX, LONG_MAX
                    );
        NSLog(@"%d", c);
    }
    return 0;
}

/*
 0x100000f32 <+34>: movl   $0xa, -0x14(%rbp)   [rbp-0x14]
 0x100000f39 <+41>: movl   $0xa, -0x18(%rbp)
 0x100000f40 <+48>: movl   -0x14(%rbp), %edi
 0x100000f43 <+51>: addl   -0x18(%rbp), %edi
 */

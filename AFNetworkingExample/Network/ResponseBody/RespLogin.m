//
//  RespLogin.m
//  AFNetworkingExample
//
//  Created by gamepub on 2022/03/30.
//

#import "RespLogin.h"

@implementation RespLoginInfo
@end

@implementation RespLogin
- (instancetype)init
{
    self = [super init];
    if(self)
    {
        self.data = [RespLoginInfo new];
    }
    
    return self;
}
@end

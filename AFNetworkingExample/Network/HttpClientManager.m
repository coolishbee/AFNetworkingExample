//
//  HttpClientManager.m
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import "HttpClientManager.h"
#import "AFNetworking.h"
#import "Constants.h"

@implementation HttpClientManager

+ (instancetype)getInstance {
    static HttpClientManager *shared = nil;
        
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[HttpClientManager alloc] init];
    });
    return shared;
}

- (void) getCarriers:(NSString *)projectId
           onSuccess:(void (^)(id _Nonnull))onSuccess
           onFailure:(void (^)(NSError * _Nonnull))onFailure
{
    NSString *strUrl = [NSString stringWithFormat:@"%@/carriers", baseURL];
    NSURL *URL = [NSURL URLWithString:strUrl];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    [manager    GET:URL.absoluteString
         parameters:nil
           progress:nil
            success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable resp)
    {
        NSLog(@"Carriers GET JSON: %@", resp);
        
        onSuccess(resp);
    }failure:^(NSURLSessionDataTask *oper, NSError *err)
    {
        NSLog(@"Error: %@", err);
        onFailure(err);
    }];
    
}

- (void) getCarriersTracks:(NSString *)packageName
                 onSuccess:(void (^)(id _Nonnull))onSuccess
                 onFailure:(void (^)(NSError * _Nonnull))onFailure
{

        
}

@end

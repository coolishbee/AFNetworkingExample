//
//  HttpClientManager.h
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HttpClientManager : NSObject
{
    long long timeOffset;
    NSString *strRegDate;
    __block NSString *networkStatus;
}

+ (instancetype)getInstance;

- (void) getCarriers:(NSString *)projectId
           onSuccess:(void (^)(id data))onSuccess
           onFailure:(void (^)(NSError *error))onFailure;

- (void) getCarriersTracks:(NSString *)packageName
                 onSuccess:(void (^)(id data))onSuccess
                 onFailure:(void (^)(NSError *error))onFailure;

@end

NS_ASSUME_NONNULL_END

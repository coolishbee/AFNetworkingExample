//
//  HttpClientManager.h
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import <Foundation/Foundation.h>
#import "RespLogin.h"

NS_ASSUME_NONNULL_BEGIN

@interface HttpClientManager : NSObject
{
}

+ (instancetype)getInstance;

- (void) login:(NSString *)type
     onSuccess:(void (^)(RespLogin *respLogin))onSuccess
     onFailure:(void (^)(NSError *error))onFailure;

- (void) getCarriers:(NSString *)projectId
           onSuccess:(void (^)(id data))onSuccess
           onFailure:(void (^)(NSError *error))onFailure;

- (void) getCarriersTracks:(NSString *)carrier_id
                 onSuccess:(void (^)(NSString *data))onSuccess
                 onFailure:(void (^)(NSError *error))onFailure;

@end

NS_ASSUME_NONNULL_END

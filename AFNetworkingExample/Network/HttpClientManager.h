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
}

+ (instancetype)getInstance;

- (void) getCarriers:(NSString *)projectId
           onSuccess:(void (^)(id data))onSuccess
           onFailure:(void (^)(NSError *error))onFailure;

- (void) getCarriersTracks:(NSString *)carrier_id
                 onSuccess:(void (^)(NSString *data))onSuccess
                 onFailure:(void (^)(NSError *error))onFailure;

@end

NS_ASSUME_NONNULL_END

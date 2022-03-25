//
//  Log.h
//  AFNetworkingExample
//
//  Created by james on 2022/02/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Log : NSObject

+ (void) print:(NSString *)status
           url:(NSString *)url;

+ (void) print:(NSString *)status
           url:(NSString *)url
          data:(nonnull id)json;

+ (NSString *) objectToJsonString:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

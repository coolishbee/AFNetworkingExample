//
//  Log.m
//  AFNetworkingExample
//
//  Created by james on 2022/02/25.
//

#import "Log.h"

@implementation Log

+ (void) print:(NSString *)status
           url:(NSString *)url
{
    NSLog(@"\n[%@ --> %@]", status, url);
}

+ (void) print:(NSString *)status
           url:(NSString *)url
          data:(nonnull id)json
{
    NSLog(@"\n[%@ --> %@]\n%@", status, url, json);
}

+ (NSString *) objectToJsonString:(NSDictionary *)dict
{
    NSError* error = nil;
    NSData* nsData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    NSString* strLog = [[NSString alloc] initWithData:nsData encoding:NSUTF8StringEncoding];
    return (error ? nil : strLog);
}

@end

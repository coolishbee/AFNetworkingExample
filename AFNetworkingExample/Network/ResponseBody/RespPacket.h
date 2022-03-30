//
//  RespPacket.h
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface RespPacket : JSONModel
@property (nonatomic) NSInteger code;
@property (nonatomic) NSString *msg;
@end

NS_ASSUME_NONNULL_END

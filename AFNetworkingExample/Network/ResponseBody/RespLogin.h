//
//  RespLogin.h
//  AFNetworkingExample
//
//  Created by gamepub on 2022/03/30.
//

#import "RespPacket.h"

NS_ASSUME_NONNULL_BEGIN

@interface RespLoginInfo : JSONModel
@property (nonatomic) NSString *username;
@property (nonatomic) NSString *userID;
@end

@interface RespLogin : RespPacket
@property (nonatomic) RespLoginInfo *data;
@end

NS_ASSUME_NONNULL_END

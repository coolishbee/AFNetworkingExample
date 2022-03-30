//
//  ReqLogin.h
//  AFNetworkingExample
//
//  Created by james on 2022/03/28.
//

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReqLogin : JSONModel

@property (nonatomic) NSString *login_type;
@property (nonatomic) NSString *login_token;

@end

NS_ASSUME_NONNULL_END

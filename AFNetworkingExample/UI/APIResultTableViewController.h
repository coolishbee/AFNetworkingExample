//
//  APIResultTableViewController.h
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIResultTableViewController : UITableViewController

@property (nonatomic, readwrite) NSMutableArray* mArrayKey;
@property (nonatomic, readwrite) NSMutableArray* mArrayValue;

@end

NS_ASSUME_NONNULL_END

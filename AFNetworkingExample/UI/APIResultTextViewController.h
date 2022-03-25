//
//  APIResultTextViewController.h
//  AFNetworkingExample
//
//  Created by james on 2022/02/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIResultTextViewController : UIViewController {
    UITextView *textView;
}

@property (nonatomic) NSString  *jsonString;

@end

NS_ASSUME_NONNULL_END

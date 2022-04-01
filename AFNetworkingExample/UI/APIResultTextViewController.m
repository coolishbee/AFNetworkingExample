//
//  APIResultTextViewController.m
//  AFNetworkingExample
//
//  Created by james on 2022/02/25.
//

#import "APIResultTextViewController.h"

//@interface APIResultTextViewController(UITextView)<UITextViewDelegate>
//@end

@implementation APIResultTextViewController

-(void)viewDidLoad{
    [super viewDidLoad];
//    textView = [[UITextView alloc] initWithFrame:self.view.bounds];
//    [textView setText:self.jsonString];
//    [self.view addSubview:textView];
    
    textLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    textLabel.numberOfLines = 0;
    textLabel.lineBreakMode = NSLineBreakByClipping;
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.textColor = [UIColor blackColor];
    textLabel.backgroundColor = [UIColor whiteColor];
    [textLabel setText:self.jsonString];
    [self.view addSubview:textLabel];
}

@end

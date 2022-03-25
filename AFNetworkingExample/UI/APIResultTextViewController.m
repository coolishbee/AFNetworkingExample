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
    textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    //[textView setDelegate:self];
    [textView setText:self.jsonString];
    [self.view addSubview:textView];
}

//- (BOOL)textView:(UITextView*)textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text{
//    NSLog(@"textView callback");
//    return YES;
//}

@end

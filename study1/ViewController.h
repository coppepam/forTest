//
//  ViewController.h
//  study1
//
//  Created by Spyc on 2014/09/28.
//  Copyright (c) 2014年 Spyc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    UIImageView *topBar;
    UIImageView *bottomBar;
    UIImageView *webBack;
    UIWebView *webView;
    UITextField *txtInput;
    UIButton *btnMove;
    
    UIButton *btnBack;
    UIButton *btnForward;
    UIButton *btnReload;
    UIButton *btnStop;
}

@property (nonatomic) IBOutlet UIImageView *topBar;
@property (nonatomic) IBOutlet UIImageView *bottomBar;
@property (nonatomic) IBOutlet UIImageView *webBack;
@property (nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic) IBOutlet UITextField *txtInput;
@property (nonatomic) IBOutlet UIButton *btnMove;

@property (nonatomic) IBOutlet UIButton *btnBack;
@property (nonatomic) IBOutlet UIButton *btnForward;
@property (nonatomic) IBOutlet UIButton *btnReload;
@property (nonatomic) IBOutlet UIButton *btnStop;

- (IBAction)btnMove:(id)sender;
- (IBAction)btnBack:(id)sender;
- (IBAction)btnForward:(id)sender;
- (IBAction)btnReload:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)txtInput:(id)sender;

- (void)urlRequest:(NSString *)url;

@end


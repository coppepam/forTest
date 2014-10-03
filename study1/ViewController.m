//
//  ViewController.m
//  study1
//
//  Created by Spyc on 2014/09/28.
//  Copyright (c) 2014年 Spyc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize topBar;
@synthesize bottomBar;
@synthesize webBack;
@synthesize webView;
@synthesize txtInput;
@synthesize btnMove;
@synthesize btnBack;
@synthesize btnForward;
@synthesize btnReload;
@synthesize btnStop;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ステータスバー非表示
    if ([UIApplication sharedApplication].isStatusBarHidden == NO) {
        [UIApplication sharedApplication].statusBarHidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// 移動ボタン
- (IBAction)btnMove:(id)sender {
    NSString *txtUrl = self.txtInput.text;
    [self urlRequest:txtUrl];
}

// 戻るボタン
- (IBAction)btnBack:(id)sender {
    if (webView.canGoBack == YES) {
        [webView goBack];
    }
}

// 進むボタン
- (IBAction)btnForward:(id)sender {
    if (webView.canGoForward == YES) {
        [webView goForward];
    }
}

// 更新ボタン
- (IBAction)btnReload:(id)sender {
    [webView reload];
    btnReload.enabled = NO;
}

// 更新中止ボタン
- (IBAction)btnStop:(id)sender {
    [webView stopLoading];
    btnStop.enabled = NO;
}

- (IBAction)txtInput:(id)sender {
    NSLog(@"SEX");
    [txtInput becomeFirstResponder];
}

// URLリクエストメソッド
- (void)urlRequest:(NSString *)url
{
    NSRange range = [url rangeOfString:@"http"];
    if (range.location == NSNotFound)
    {
        NSString *searchHead = @"https://www.google.co.jp/search?q=" ;
        url = [searchHead stringByAppendingString:url];
    }
    
    url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *strurl = url;
    NSURL *targetUrl = [NSURL URLWithString:strurl];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetUrl];
    [webView loadRequest:request];
}

@end

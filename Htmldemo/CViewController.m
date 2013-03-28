//
//  CViewController.m
//  Htmldemo
//
//  Created by 杨 宏强 on 13-3-28.
//  Copyright (c) 2013年 yanghongqiang. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    
    //使用loadHTMLString()方法显示网页内容
//    [webView loadHTMLString:[self getHtmlString] baseURL:nil];
    NSString*strng=@"<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" /><title>无标题文档</title></head><body>dhsdhdfh</body></html>";
    [webView loadHTMLString:strng baseURL:nil];
//    [webView loadHTMLString:[self getHtmlString] baseURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] resourcePath]]];
//    
    [self.view addSubview:webView];
}
//读取html文件内容
- (NSString *)getHtmlString{
    //文件路径
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    
    NSString *contents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    return contents;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

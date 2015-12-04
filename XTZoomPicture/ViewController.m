//
//  ViewController.m
//  XTZoomPicture
//
//  Created by TuTu on 15/12/3.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "ViewController.h"
#import "XTZoomPicture.h"

@interface ViewController () <XTZoomPictureDelegate>
@property (nonatomic,strong) XTZoomPicture *zoomPictureView ;
@end

@implementation ViewController

- (IBAction)btClicked:(id)sender {
    (![self.zoomPictureView superview]) ? [self.view addSubview:self.zoomPictureView] : [self.zoomPictureView removeFromSuperview] ;
}

- (XTZoomPicture *)zoomPictureView
{
    if (!_zoomPictureView) {
        _zoomPictureView = [[XTZoomPicture alloc] initWithFrame:self.view.bounds] ;
        _zoomPictureView.backImage = [UIImage imageNamed:@"back1"] ;
        _zoomPictureView.xt_Delegate = self ;
    }
    
    return _zoomPictureView ;
}

#pragma mark --
#pragma mark - XTZoomPictureDelegate
- (void)shutDown
{
    [self.zoomPictureView removeFromSuperview] ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

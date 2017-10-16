//
//  ViewController.m
//  UIimagePick-test
//
//  Created by Loovee on 2017/10/13.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
//#import "TOCropViewController.h"


@interface ViewController ()<UINavigationControllerDelegate ,UIImagePickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)clicked:(id)sender {
    UIImagePickerController *pick = [[UIImagePickerController alloc] init];
    [self presentViewController:pick animated:YES completion:nil];
//    pick.allowsEditing = YES;
    pick.delegate = self;
    pick.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    //通过UIImagePickerControllerMediaType判断返回的是照片还是视频
    NSString* type = [info objectForKey:UIImagePickerControllerMediaType];
    //如果返回的type等于kUTTypeImage，代表返回的是照片,并且需要判断当前相机使用的sourcetype是拍照还是相册
    UIImage *img_hd = nil;
    if ([type isEqualToString:(NSString*)kUTTypeImage] && picker.sourceType==UIImagePickerControllerSourceTypeCamera) {
        //获取照片的原图
        img_hd = [info objectForKey:UIImagePickerControllerOriginalImage];
        //获取图片裁剪的图
        img_hd = [info objectForKey:UIImagePickerControllerEditedImage];
        
        
    }else{
        //获取照片的原图
        img_hd = [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    
//    TOCropViewController *TOCropVC = [[TOCropViewController alloc] initWithCroppingStyle:TOCropViewCroppingStyleDefault image:img_hd];
//    [self presentViewController:TOCropVC animated:YES completion:nil];
    
    return ;
    ImageViewController *imageVC = [ImageViewController new];
    imageVC.image = img_hd;
    [picker pushViewController:imageVC animated:YES];
    
}

@end

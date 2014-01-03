//
//  ViewController.m
//  exam73PApp
//
//  Created by SDT1 on 2014. 1. 2..
//  Copyright (c) 2014년 SDT1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImage *image1;
    UIImage *image2;
    UIImage *image3;
    
    int index;
    
    __weak IBOutlet UIButton *rightBtn;
    __weak IBOutlet UIButton *leftBtn;
}
@property (strong, nonatomic) IBOutlet UIImageView *autoImage;

@end

@implementation ViewController

- (IBAction)rightClick:(id)sender
{
    index++;
    
    if(index>3) index = 3;
    
    switch (index) {
        case 1:
            self.autoImage.image = image1;
            break;
            
        case 2:
            self.autoImage.image = image2;
            leftBtn.enabled = YES;
            break;
            
        case 3:
            self.autoImage.image = image3;
            rightBtn.enabled = NO;
            
            break;
    }
    
}


- (IBAction)leftClick:(id)sender
{
    index--;
    
    if(!index) index = 1;
    
    switch (index) {
        case 1:
            self.autoImage.image = image1;
            leftBtn.enabled = NO;
            
            break;
            
        case 2:
            self.autoImage.image = image2;
            rightBtn.enabled = YES;
            break;
            
        case 3:
            self.autoImage.image = image3;
            break;
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    index = 1;
    leftBtn.enabled = NO;
	
    NSString *imagePath1 = [[NSBundle mainBundle] pathForResource:@"auto1" ofType:@"jpg"];
    NSString *imagePath2 = [[NSBundle mainBundle] pathForResource:@"auto2" ofType:@"jpg"];
    NSString *imagePath3 = [[NSBundle mainBundle] pathForResource:@"auto3" ofType:@"jpg"];
    
    image1 = [UIImage imageWithContentsOfFile:imagePath1];
    image2 = [UIImage imageWithContentsOfFile:imagePath2];
    image3 = [UIImage imageWithContentsOfFile:imagePath3];
    
    
    self.autoImage.image = image1;

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  ObjCButton
//
//  Created by Samuel Pellegrene on 4/1/17.
//  Copyright © 2017 Samuel Pellegrene. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ClickHereButton:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@"Does 2 + 2 =4?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIAlertController *result = [UIAlertController alertControllerWithTitle: @"Answer" message:@"That is correct" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
        [result addAction:ok];
        [self presentViewController:result animated:YES completion:nil];
        
    }];
    
    UIAlertAction *no = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) { UIAlertController *result = [UIAlertController alertControllerWithTitle:@"Answer" message:@"That is incorrect!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel handler:nil];
        [result addAction:ok];
        [self presentViewController:result animated:YES completion:nil];
    }];
    
    [alert addAction:yes];
    [alert addAction:no];
    [self presentViewController:alert animated:YES completion:nil];
    
}

@end

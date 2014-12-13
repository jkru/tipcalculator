//
//  TipCalculatorViewController.m
//  tipCalculatorDemo
//
//  Created by Glenna Buford on 12/13/14.
//  Copyright (c) 2014 Julie Hollek. All rights reserved.
//

#import "TipCalculatorViewController.h"

@interface TipCalculatorViewController ()
- (IBAction)calculateTip:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField * txtFieldAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblTipAmount;
@property (weak, nonatomic) IBOutlet UILabel *lblTotal;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentTipPercentage;
- (IBAction)onSelect:(id)sender;

//created a method down below
@end

@implementation TipCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Always run after a view is loaded
}

-(void)calculateTip{
    //method that takes percentage tip + bill amount and calculates tip
    CGFloat billValue = [self.txtFieldAmount.text floatValue];
    CGFloat totalAmount = billValue + billValue * 0.20;
    
    self.lblTotal.text = [NSString stringWithFormat:@"%f", totalAmount];
    CGFloat tipAmount = billValue*.20;
    self.lblTipAmount.text = [NSString stringWithFormat:@"%f", tipAmount];
    
    //self.lblTotal.text = self.txtFieldAmount.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//(return value)nameofmethod(methodtype)segmentedcontrol--who's sending the method
- (IBAction)onSelect:(id)sender {
    NSLog(@"sender %@", sender);
}
- (IBAction)calculateTip:(id)sender {
    [self calculateTip];

}
@end

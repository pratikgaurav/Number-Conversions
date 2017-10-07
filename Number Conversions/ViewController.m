//
//  ViewController.m
//  Number Conversions
//
//  Created by Kamireddi, Gaurav Venkata Satya Pratik on 10/4/17.
//  Copyright © 2017 Kamireddi, Gaurav Venkata Satya Pratik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *ipText;
@property (weak, nonatomic) IBOutlet UILabel *opLabel;
- (IBAction)binary:(id)sender;
- (IBAction)hexadecimal:(id)sender;
- (IBAction)octal:(id)sender;

@end

@implementation ViewController
@synthesize opLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"a.jpg"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)binary:(id)sender {
    NSString *str = [_ipText text];
    int n = [str intValue];
    NSString *k = @"";
    while(n != 0)
    {
        int l = n%2;
        k = [[NSString stringWithFormat:@"%d", l] stringByAppendingString: k];
        n = n/2;
    }
    opLabel.text = [k stringByAppendingString:@"B"];
    NSLog(@"%@", k);
}

- (IBAction)hexadecimal:(id)sender {
    NSString *str = [_ipText text];
    int n = [str intValue];
    NSString *k = @"";
    while(n != 0)
    {
        int l = n%16;
        switch (l)
        {
            case 10:
                k = [[NSString stringWithFormat:@"A"] stringByAppendingString: k];
                break;
            case 11:
                k = [[NSString stringWithFormat:@"B"] stringByAppendingString: k];
                break;
            case 12:
                k = [[NSString stringWithFormat:@"C"] stringByAppendingString: k];
                break;
            case 13:
                k = [[NSString stringWithFormat:@"D"] stringByAppendingString: k];
                break;
            case 14:
                k = [[NSString stringWithFormat:@"E"] stringByAppendingString: k];
                break;
            case 15:
                k = [[NSString stringWithFormat:@"F"] stringByAppendingString: k];
                break;
            default:
                k = [[NSString stringWithFormat:@"%d", l] stringByAppendingString: k];
                break;
        }
        //k = [[NSString stringWithFormat:@"%X", l] stringByAppendingString: k];
        n = n/16;
    }
    opLabel.text = [k stringByAppendingString:@"H"];
    NSLog(@"%@", k);
}

- (IBAction)octal:(id)sender {
    NSString *str = [_ipText text];
    int n = [str intValue];
    NSString *k = @"";
    while(n != 0)
    {
        int l = n%8;
        k = [[NSString stringWithFormat:@"%d", l] stringByAppendingString: k];
        n = n/8;
    }
    opLabel.text = [k stringByAppendingString:@"Q"];
    NSLog(@"%@", k);
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == _ipText) {
        [_ipText resignFirstResponder];
    }
    return YES;
}

@end

/*
char c = 'B';
return 0;
*/

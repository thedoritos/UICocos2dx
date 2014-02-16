//
//  HelloRootViewController.m
//  UICocos2dx
//
//  Created by thedoritos on 2014/02/16.
//
//

#import "HelloRootViewController.h"
#import "HelloAppViewController.h"

@interface HelloRootViewController ()

@end

@implementation HelloRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Root";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHelloAppView:(UIButton *)sender {
    UIViewController *helloAppVC = [[HelloAppViewController alloc] init];
    [self.navigationController pushViewController:helloAppVC animated:YES];
}

@end

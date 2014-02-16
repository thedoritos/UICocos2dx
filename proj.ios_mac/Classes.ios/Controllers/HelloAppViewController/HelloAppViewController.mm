//
//  HelloAppViewController.mm
//  UICocos2dx
//
//  Created by thedoritos on 2014/02/16.
//
//

#import "HelloAppViewController.h"

#import "cocos2d.h"
#import "EAGLView.h"
#import "HelloAppDelegate.h"

// cocos2d application instance
static HelloAppDelegate s_sharedApplication;

@interface HelloAppViewController ()

@end

@implementation HelloAppViewController

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
	// Do any additional setup after loading the view.
    
    self.title = @"Hello";
    
    [self initCocosApplication];
}

- (void)viewDidDisappear:(BOOL)animated
{
    cocos2d::Director::getInstance()->end();
}

- (void)initCocosApplication
{
    CCEAGLView *__glView = [CCEAGLView viewWithFrame:self.view.frame
                                         pixelFormat:kEAGLColorFormatRGB565
                                         depthFormat:GL_DEPTH24_STENCIL8_OES
                                  preserveBackbuffer:NO
                                          sharegroup:nil
                                       multiSampling:NO
                                     numberOfSamples:0];
    
    self.view = __glView;
    
    cocos2d::Application::getInstance()->run();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    cocos2d::Director::getInstance()->end();
}

@end

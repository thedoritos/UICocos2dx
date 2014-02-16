#import <UIKit/UIKit.h>

// Under iOS and the Simulator, we can use an alternate Accelerometer interface
#import "AccelerometerSimulation.h"
#import "AppDelegate.h"

int main(int argc, char *argv[]) {
    
//    // Launch as a cocos2d-x app.
//    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
//    int retVal = UIApplicationMain(argc, argv, nil, @"AppController");
//    [pool release];
//    return retVal;
    
    // Launch as an ordinal iOS app.
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

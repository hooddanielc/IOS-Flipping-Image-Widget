#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"LOL");
    
    FlippingImage *flippingImage = [[FlippingImage alloc]
                                    initWithImages:[UIImage imageNamed:@"moon.jpeg"]
                                    image2:[UIImage imageNamed:@"borderSomething.png"]
                                    rect:CGRectMake(0, 0, 100, 100)];
    
    [self.view addSubview: flippingImage];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(flipImageTap:)];
    [flippingImage addGestureRecognizer:recognizer];
}

- (IBAction)flipImageTap: (UIGestureRecognizer *) sender {
    FlippingImage *tappedImage = (FlippingImage *) sender.view;
    [tappedImage flipImage];
}

@end

#import "FlippingImage.h"

@implementation FlippingImage

@synthesize imageOne, imageTwo, isFlipped;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        isFlipped = NO;
        [self setUserInteractionEnabled:YES];
        [self setImage: imageOne];
    }
    return self;
}

- (id) initWithImages: (UIImage *) image1 image2 : (UIImage *) image2 rect : (CGRect) rect {
    if (self) {
        imageOne = image1;
        imageTwo = image2;
    }
    return [self initWithFrame: rect];
}

- (void) flipImage {
    UIImage *newImage = isFlipped ? imageOne : imageTwo;
    isFlipped = isFlipped ? NO : YES;
    [UIView transitionWithView:self duration:.5 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{ self.image = newImage; } completion:nil];
}

@end

#import <UIKit/UIKit.h>

@interface FlippingImage : UIImageView

@property UIImage *imageOne, *imageTwo;
@property BOOL isFlipped;

- (id) initWithImages: (UIImage *) image1 image2 : (UIImage *) image2 rect : (CGRect) rect;
- (void) flipImage;

@end
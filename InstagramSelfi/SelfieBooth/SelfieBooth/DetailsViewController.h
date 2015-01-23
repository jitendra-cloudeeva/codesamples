//
//  DetailsViewController.h
//  SelfieBooth
//
//  Created by Jitendra Rajoria on 01/23/15.
//  Copyright (c) 2015 Jitendra Rajoria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController

@property (nonatomic, retain, readonly) UIImageView *imageView;
@property (nonatomic, retain, readwrite) NSDictionary *photo;

@end

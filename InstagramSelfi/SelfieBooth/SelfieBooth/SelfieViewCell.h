//
//  SelfieViewCell.h
//  SelfieBooth
//
//  Created by Jitendra Rajoria on 01/23/15.
//  Copyright (c) 2015 Jitendra Rajoria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelfieViewCell : UICollectionViewCell

@property (nonatomic, strong, readwrite) UIImageView *imageView;
@property (nonatomic, strong, readwrite) NSDictionary *photo;

@end

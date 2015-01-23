//
//  SelfieModel.h
//  SelfieBooth
//
//  Created by Jitendra Rajoria on 01/23/15.
//  Copyright (c) 2015 Jitendra Rajoria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelfieModel : NSObject

+ (void) imageForPhoto:(NSDictionary *)
            photo size:(NSString *)size
            completion:(void(^)(UIImage *image))completion;

@end

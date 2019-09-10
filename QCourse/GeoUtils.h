//
//  GeoUtils.h
//  QCourse
//
//  Created by Qing-Cheng Li on 2019/9/8.
//  Copyright © 2019 Qing-Cheng Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GeoUtils : NSObject

+ (double)distanceInKmBetweenLocation:(CLLocation *)location anotherLocation:(CLLocation *)anotherLocation;

@end

NS_ASSUME_NONNULL_END

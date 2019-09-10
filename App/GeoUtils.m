//
//  GeoUtils.m
//  QCourse
//
//  Created by Qing-Cheng Li on 2019/9/8.
//  Copyright © 2019 Qing-Cheng Li. All rights reserved.
//

#import "GeoUtils.h"

@implementation GeoUtils

+ (double)distanceInKmBetweenLocation:(CLLocation *)location anotherLocation:(CLLocation *)anotherLocation {
    CLLocationDistance distance = [location distanceFromLocation:anotherLocation];
    return distance/1000.0f;
}

@end

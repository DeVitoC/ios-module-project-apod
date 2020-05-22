//
//  CBDPicOfTheDayController.m
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CBDPicOfTheDayController.h"
#import "CBDPicOfTheDay.h"
#import "CBDPicOfTheDay+JSONSerialization.h"

@implementation CBDPicOfTheDayController

- (instancetype)initWithPics:(NSArray *)pics {
    self = [super init];
    if (!self) { return nil; }
    _pics = pics;
    return self;
}

- (void)fetchPhotosForDate:(NSDate *)date
           completionBlock:(CBDPicsCompletion)completionBlock {
    
}

- (void)addPic:(CBDPicOfTheDay *)pic {

}

@end

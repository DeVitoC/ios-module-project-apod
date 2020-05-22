//
//  CBDPicOfTheDayController.h
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CBDPicOfTheDay;

NS_ASSUME_NONNULL_BEGIN

typedef void (^CBDPicsCompletion)(CBDPicOfTheDay *_Nullable pic, NSError *_Nullable error);

NS_SWIFT_NAME(PicOfTheDayController)
@interface CBDPicOfTheDayController : NSObject

@property (nonatomic, readonly, copy) NSMutableArray<CBDPicOfTheDay *> *pics;

- (instancetype)init;

- (instancetype)initWithPics:(NSArray *)pics;

- (void)fetchPhotosForDate:(NSDate *)date
           completionBlock:(CBDPicsCompletion)completionBlock;

@end

NS_ASSUME_NONNULL_END

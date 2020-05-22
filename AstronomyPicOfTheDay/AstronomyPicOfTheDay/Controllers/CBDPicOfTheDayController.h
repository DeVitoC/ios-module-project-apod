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
NS_SWIFT_NAME(PicOfTheDayController)

typedef void (^CBDPicsCompletion)(CBDPicOfTheDay *_Nullable pic, NSError *_Nullable error);

@interface CBDPicOfTheDayController : NSObject

//@property (nonatomic, readonly, copy) NSArray *pics;

- (instancetype)init;

//- (instancetype)initWithPics:(NSArray *)pics;

- (void)fetchPhotosForDate:(NSDate *)date
           completionBlock:(CBDPicsCompletion)completionBlock;

//- (NSArray *)addPic:(CBDPicOfTheDay *)pic;

@end

NS_ASSUME_NONNULL_END

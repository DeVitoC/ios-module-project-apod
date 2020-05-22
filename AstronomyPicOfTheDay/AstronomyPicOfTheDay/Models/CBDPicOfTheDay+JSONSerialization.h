//
//  CBDPicOfTheDay+JSONSerialization.h
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDPicOfTheDay.h"
@class CBDPicOfTheDay;

NS_ASSUME_NONNULL_BEGIN

@interface CBDPicOfTheDay (JSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END

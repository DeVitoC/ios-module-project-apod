//
//  CBDPicOfTheDay.h
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
NS_SWIFT_NAME(PicOfTheDay)
@interface CBDPicOfTheDay : NSObject

@property (nonatomic, readonly) NSString *date;
@property (nonatomic, readonly) NSString *explanation;
@property (nonatomic, readonly) NSString *hdurl;
@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *url;
@property (nonatomic, readonly, nullable) NSString *copyright;

- (instancetype)initWithDate:(NSString *)date explanation:(NSString *)explanation hdurl:(NSString *)hdurl title:(NSString *)title url:(NSString *)url copyright:(NSString *)copyright;



@end

NS_ASSUME_NONNULL_END

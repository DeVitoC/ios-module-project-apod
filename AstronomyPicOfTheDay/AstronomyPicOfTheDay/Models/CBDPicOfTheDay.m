//
//  CBDPicOfTheDay.m
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDPicOfTheDay.h"

@implementation CBDPicOfTheDay

- (instancetype)initWithDate:(NSString *)date explanation:(NSString *)explanation hdurl:(NSString *)hdurl title:(NSString *)title url:(NSString *)url copyright:(NSString *)copyright {
    self = [super init];
    if (!self) { return nil; }
    _date = date;
    _explanation = explanation;
    _hdurl = hdurl;
    _title = title;
    _url = url;
    _copyright = copyright;

    return self;
}

@end

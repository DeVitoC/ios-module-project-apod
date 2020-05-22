//
//  CBDPicOfTheDay+JSONSerialization.m
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

#import "CBDPicOfTheDay+JSONSerialization.h"
#import "CBDPicOfTheDay.h"

@implementation CBDPicOfTheDay (JSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    NSString *copyright = dictionary[@"copyright"];
    NSString *date = dictionary[@"date"];
    NSString *explanation = dictionary[@"explanation"];
    NSString *hdurl = dictionary[@"hdurl"];
    NSString *title = dictionary[@"title"];
    NSString *url = dictionary[@"url"];

    return [[CBDPicOfTheDay alloc] initWithDate:date explanation:explanation hdurl:hdurl title:title url:url copyright:copyright];
    
}

@end

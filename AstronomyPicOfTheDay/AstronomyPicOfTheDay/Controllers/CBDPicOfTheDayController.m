//
//  CBDPicOfTheDayController.m
//  AstronomyPicOfTheDay
//
//  Created by Christopher Devito on 5/21/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import "CBDPicOfTheDayController.h"
#import "CBDPicOfTheDay.h"
#import "CBDPicOfTheDay+JSONSerialization.h"

@implementation CBDPicOfTheDayController

- (instancetype)init {
    self = [super init];
    if (!self) { return nil; }
    _pics = [[NSMutableArray alloc] init];
    return self;
}

- (instancetype)initWithPics:(NSMutableArray *)pics {
    self = [super init];
    if (!self) { return nil; }
    _pics = pics;
    return self;
}

- (void)fetchPhotosForDate:(NSDate *)date
           completionBlock:(CBDPicsCompletion)completionBlock {
    NSString *apiKey = @"IjCchzjn0EuNgmVSr824DPsW57IXpXMwg7bS9mnc";
    NSURL *baseURL = [NSURL URLWithString:@"https://api.nasa.gov/planetary/apod"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    NSString *dateString = [dateFormatter stringFromDate:date];
    NSURLQueryItem *searchDate = [NSURLQueryItem queryItemWithName:@"date" value: dateString];
    NSURLQueryItem *searchAPIKey = [NSURLQueryItem queryItemWithName:@"api_key" value:apiKey];
    NSURLComponents *components = [NSURLComponents componentsWithURL:baseURL resolvingAgainstBaseURL:YES];
    components.queryItems = @[
        searchDate,
        searchAPIKey,
    ];
    NSURL *url = components.URL;

    if (!url) { return; }

    NSURLSessionTask *task = [NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error fetching data from server: %@", error);
            completionBlock(nil, error);
        }

        NSError *dataError = [[NSError alloc] initWithDomain:@"com.cbdpicoftheday" code:401 userInfo:@{@"Invalid Data" : @"No valid data from server"}];
        if (!data) {
            NSLog(@"No valid data from server.");
            completionBlock(nil, dataError);
        }

        NSError *jsonError = nil;
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];

        if (jsonError) {
            completionBlock(nil, jsonError);
            return;
        }

        CBDPicOfTheDay *pic = [[CBDPicOfTheDay alloc] initWithDictionary:dictionary];
        if (pic) {
            [self.pics addObject:pic];
            completionBlock(pic, nil);
        }
        completionBlock(nil, nil);
    }];
    [task resume];

}

@end

//
//  Chair.m
//  W04D2
//
//  Created by Sam Meech-Ward on 2019-05-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Chair.h"
#import "W04D2-Swift.h"

@implementation Chair

- (instancetype)initWithNumberOfLegs:(NSInteger)legs material:(NSString *)material {
  self = [super init];
  if (self) {
    _numberOfLegs = legs;
    _material = material;
    _design = [[Design alloc] initWithPattern:@"checkered" colour:@"red"];
  }
  return self;
}

@end

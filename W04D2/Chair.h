//
//  Chair.h
//  W04D2
//
//  Created by Sam Meech-Ward on 2019-05-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Design;

NS_ASSUME_NONNULL_BEGIN

@interface Chair : NSObject

- (instancetype)initWithNumberOfLegs:(NSInteger)legs material:(NSString *)material;

@property (nonatomic, assign) NSInteger numberOfLegs;
@property (nonatomic, strong) NSString *material;
@property (nonatomic, strong) Design *design;

@end

NS_ASSUME_NONNULL_END

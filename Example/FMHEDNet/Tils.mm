//
//  Tils.m
//  FMHEDNet_Example
//
//  Created by dexiong on 2024/5/16.
//  Copyright © 2024 dexiong. All rights reserved.
//

#import "Tils.h"
#import <FMHEDNet/FMHEDNet.h>

@interface Tils ()
@property (nonatomic, strong) FMHEDNet *hed;
@end

@implementation Tils

- (instancetype)init {
    if (self = [super init]) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"hed_graph" ofType:@"pb"];
        _hed = [[FMHEDNet alloc] initWithModelPath:path];
    }
    return  self;
}

@end

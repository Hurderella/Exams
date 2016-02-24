//
//  ExamController.m
//  Exam_KVO
//
//  Created by Hurderella on 2016. 2. 13..
//  Copyright © 2016년 Hurderella. All rights reserved.
//

#import "ExamController.h"

@implementation ExamController

- (id) init{
    self = [super init];
    
    testArr = [[NSMutableArray alloc] init];
    
    [testArr addObject:@"C"];
    [testArr addObject:@"B"];
    [testArr addObject:@"A"];
    
    testArrCT = [[TestArrayController alloc] init];
    [testArrCT addObject:@"F"];
    [testArrCT addObject:@"E"];
    [testArrCT addObject:@"D"];
    

    [testArrCT addObserver:self
              forKeyPath:@"arrangedObjects"
                 options:NSKeyValueObservingOptionInitial
                 context:nil];
    
    [checkBox addObserver:self
               forKeyPath:@"state"
                  options:NSKeyValueObservingOptionInitial
                  context:nil];
    
    return self;
}

- (IBAction)btnClick:(id)sender{

    NSLog(@"btn Click");
    
    [testArrCT addObject:@"G"];

}

- (IBAction)btnClick1:(id)sender{

    NSLog(@"btn 1 click");

    [testArr addObject:@"K"];

}

- (IBAction)ckClick:(id)sender{
    
    NSLog(@"check click");
}

- (void) observeValueForKeyPath:(NSString *)keyPath
                       ofObject:(id)object
                         change:(NSDictionary<NSString *,id> *)change
                        context:(void *)context{

    NSLog(@"observing!!!");
    
    if ([object isEqual:testArrCT]) {
        [change enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key,
                                                    id  _Nonnull obj,
                                                    BOOL * _Nonnull stop) {
            
            [obj className];
            NSLog(@">> %@, %@", key, [obj className]);
            
        }];
    }
}



@end

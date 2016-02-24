//
//  ExamController.h
//  Exam_KVO
//
//  Created by Hurderella on 2016. 2. 13..
//  Copyright © 2016년 Hurderella. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestArrayController.h"

@interface ExamController : NSObject{

    NSMutableArray* testArr;
    IBOutlet NSTextField* textField;
    IBOutlet NSButton* checkBox;
    
    TestArrayController* testArrCT;
    
}

- (IBAction)btnClick:(id)sender;
- (IBAction)btnClick1:(id)sender;
- (IBAction)ckClick:(id)sender;
@end

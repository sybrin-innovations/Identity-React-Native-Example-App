//
//  SDKRunner.m
//  ProjectName
//
//  Created by Rhulani Ndhlovu on 2023/01/16.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(SDKRunner, NSObject)

RCT_EXTERN_METHOD(scan:(RCTResponseSenderBlock)callback)
+ (BOOL) requiresMainQueueSetup {
  return YES;
}

@end

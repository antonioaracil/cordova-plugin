//
//  CustomPlugin.h
//  Workshop
//
//  Created by Antonio Aracil on 18/6/15.
//
//

#import <Cordova/CDV.h>

#import "CustomPluginViewController.h"

@interface CustomPlugin : CDVPlugin

- (void) openPlugin:(CDVInvokedUrlCommand *)command;
- (void) returnResult:(BOOL)result;

@property (strong, nonatomic) CustomPluginViewController *overlay;
@property (strong, nonatomic) CDVInvokedUrlCommand *latestCommand;
@property (readwrite, assign) BOOL hasPendingOperation;
@property (readwrite, retain) NSString *name;

@end

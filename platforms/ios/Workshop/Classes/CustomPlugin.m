//
//  CustomPlugin.m
//  Workshop
//
//  Created by Antonio Aracil on 18/6/15.
//
//

#import "CustomPlugin.h"

@implementation CustomPlugin

-(void) openPlugin:(CDVInvokedUrlCommand *)command {
    
    self.hasPendingOperation = YES;
    
    self.latestCommand = command;
    
    self.name = [NSString stringWithFormat:@"%@ %@",command.arguments[0],command.arguments[1]];
    
    self.overlay = [[CustomPluginViewController alloc] initWithNibName:@"CustomPluginViewController" bundle:nil];
    self.overlay.plugin = self;
    
    [self.viewController presentViewController:self.overlay animated:YES completion:nil];
}

-(void) returnResult:(BOOL)result{
    
    if(result)
    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[NSString stringWithFormat:@"Contacto %@ insertado correctamente", self.name]] callbackId:self.latestCommand.callbackId];
    else
    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No se ha insertado ningun contacto"] callbackId:self.latestCommand.callbackId];
    
    self.hasPendingOperation = NO;
    
    [self.viewController dismissViewControllerAnimated:YES completion:nil];
    
}

@end

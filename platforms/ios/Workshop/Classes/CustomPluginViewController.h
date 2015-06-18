//
//  CustomPluginViewController.h
//  Workshop
//
//  Created by Antonio Aracil on 18/6/15.
//
//

#import <UIKit/UIKit.h>

@class CustomPlugin;

@interface CustomPluginViewController : UIViewController <UINavigationControllerDelegate>

@property (strong, nonatomic) CustomPlugin* plugin;
@property (strong, nonatomic) NSString *pin;
@property (strong, nonatomic) IBOutlet UITextField *txfPin;

- (IBAction) backButton:(id)sender;
- (IBAction) cancelButton:(id)sender;

@end

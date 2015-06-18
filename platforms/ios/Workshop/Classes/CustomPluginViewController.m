//
//  CustomPluginViewController.m
//  Workshop
//
//  Created by Antonio Aracil on 18/6/15.
//
//

#import "CustomPlugin.h"
#import "CustomPluginViewController.h"

@interface CustomPluginViewController ()

@end

@implementation CustomPluginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self) {
        
        CGRect screenFrame = [[UIScreen mainScreen] bounds];
        self.view.frame = screenFrame;
        self.pin = @"1234";
    }
    
    return self;
}

- (IBAction)backButton:(id)sender {
    
    if([self.pin isEqualToString:self.txfPin.text]){
        
        [self.plugin returnResult:true];
    }
    else{
        
        UIAlertView *alertPin = [[UIAlertView alloc] initWithTitle:@"PIN incorrecto" message:@"Intentalo de nuevo" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertPin show];
    }
}

- (IBAction)cancelButton:(id)sender {
    
    [self.plugin returnResult:false];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

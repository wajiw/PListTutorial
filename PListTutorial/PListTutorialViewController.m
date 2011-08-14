//
//  PListTutorialViewController.m
//  PListTutorial
//
//  Created by Wa-jiw Casey on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PListTutorialViewController.h"

@implementation PListTutorialViewController

-(IBAction) loadTheList:(id)sender
{
    NSLog(@"%@", @" Test Click");
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"MyArray" ofType:@"plist"];
    NSDictionary *rows = [[[NSDictionary alloc] initWithContentsOfFile:path] autorelease];
    
    
    
    for(NSString *row in rows)
    {
        NSArray *arr = [rows objectForKey:@"Phones"];
        NSString *str1 = [rows objectForKey:row];
        NSLog(@"loop 1=%@", str1);
        for(NSString *row2 in arr)
        {
            NSLog(@"key=%@, val=%@", row, row2);
            NSArray *arr2 = [rows objectForKey:row2];
            for(NSString *phn in arr2)
            {
                NSLog(@"key=%@, val=%@", phn, row2);
            }
        }
    }
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

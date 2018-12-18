//
//  EntryDetailViewController.m
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "BJBEntryController.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void)updateViews
{
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        // update the current entry
        [[BJBEntryController shared] modifyEntry:self.entry withTitle:self.titleTextField.text body:self.bodyTextView.text];
    } else {
        // add a new entry
        BJBEntry *entry = [[BJBEntry alloc] initWithTitle:self.titleTextField.text bodyText:self.bodyTextView.text];
        [[BJBEntryController shared] addEntry: entry];
    }
    [[self navigationController] popViewControllerAnimated:true];
    
}
- (IBAction)clearButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
}


@end

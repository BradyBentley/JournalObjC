//
//  EntryListTableViewController.m
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "BJBEntryController.h"
#import "EntryListTableViewController.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[BJBEntryController shared] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EntryCell" forIndexPath:indexPath];
    BJBEntry *entry = [[BJBEntryController shared] entries][indexPath.row];
    cell.textLabel.text = entry.title;
    return cell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        BJBEntry *entry = [[BJBEntryController shared] entries][indexPath.row];
        [[BJBEntryController shared] removeEntry:entry];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ToEntryDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        EntryDetailViewController *destinationVC = [segue destinationViewController];
        BJBEntry *entry = [[BJBEntryController shared] entries][indexPath.row];
        entry = [destinationVC entry];
    }
}
@end

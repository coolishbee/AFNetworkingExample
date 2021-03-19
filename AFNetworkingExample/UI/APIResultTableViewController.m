//
//  APIResultTableViewController.m
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import "APIResultTableViewController.h"

@interface APIResultTableViewController ()

@end

@implementation APIResultTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_mArrayKey count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"APIResultCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [_mArrayKey objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = UIColor.blackColor;
    cell.detailTextLabel.text = [_mArrayValue objectAtIndex:indexPath.row];
    
    return cell;
}

@end

//
//  APIResponseTableViewController.m
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import "APIResponseTableViewController.h"
#import "APIResultTableViewController.h"

@interface APIResponseTableViewController ()

@end

@implementation APIResponseTableViewController

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
    
    static NSString *identifier = @"APIResponseCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [_mArrayKey objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = UIColor.blackColor;
    cell.detailTextLabel.text = [_mArrayValue objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    APIResultTableViewController *respTVC = [[APIResultTableViewController alloc] init];
    respTVC.title = [_mArrayKey objectAtIndex:indexPath.row];
    
    respTVC.mArrayKey = [NSMutableArray array];
    respTVC.mArrayValue = [NSMutableArray array];

    for(NSDictionary *dict in _mDict)
    {
        NSString *nameKey = [dict objectForKey:@"name"];
        if([nameKey isEqualToString:[_mArrayKey objectAtIndex:indexPath.row]])
        {
            NSLog(@"%@",[dict objectForKey:@"id"]);
            NSLog(@"%@",[dict objectForKey:@"name"]);
            NSLog(@"%@",[dict objectForKey:@"tel"]);
            for(NSString *key in dict.allKeys)
            {
                [respTVC.mArrayKey addObject:key];
                [respTVC.mArrayValue addObject:[dict objectForKey:key]];
            }
        }
    }
    
    [self.navigationController pushViewController:respTVC animated:YES];

}

@end

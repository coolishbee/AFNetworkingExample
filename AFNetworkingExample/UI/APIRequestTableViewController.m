//
//  APIRequestTableViewController.m
//  AFNetworkingExample
//
//  Created by james on 2021/03/19.
//

#import "APIRequestTableViewController.h"
#import "APIResponseTableViewController.h"
#import "HttpClientManager.h"
#import "MBProgressHUD.h"

@interface APIRequestTableViewController ()

@end

@implementation APIRequestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mArray = [NSArray arrayWithObjects:@"Get Carriers", @"Get Carriers Tracks", nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [mArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"APICell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [mArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.textColor = UIColor.grayColor;
    cell.detailTextLabel.text = [mArray objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Navigation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
     
    switch (indexPath.row)
    {
        case 0:
        {
            [[HttpClientManager getInstance] getCarriers:@""
                                               onSuccess:^(id _Nonnull resp)
            {

                APIResponseTableViewController *respTVC = [[APIResponseTableViewController alloc] init];
                respTVC.title = [self->mArray objectAtIndex:indexPath.row];

                self->_mDict = resp;
                respTVC.mDict = resp;
                respTVC.mArrayKey = [NSMutableArray array];
                respTVC.mArrayValue = [NSMutableArray array];

                for(NSDictionary *dict in self->_mDict)
                {
                    [respTVC.mArrayKey addObject:[dict objectForKey:@"name"]];
                    NSString *intStr = [NSString stringWithFormat: @"%ld values", (long)dict.count];
                    [respTVC.mArrayValue addObject:intStr];
                }
                
                [self.navigationController pushViewController:respTVC animated:YES];
                [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
                
            }onFailure:^(NSError * _Nonnull err) {
                //msg popup!!
                [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
            }];
            
            break;
        }
        case 1:
        {

            break;
        }

    }
    
}


@end

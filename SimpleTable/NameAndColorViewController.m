//
//  NameAndColorViewController.m
//  SimpleTable
//
//  Created by Leo Peng on 5/26/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import "NameAndColorViewController.h"
#import "NameAndColorCell.h"

static NSString *CellTableIdentifier = @"CellTableIdentifier";

@interface NameAndColorViewController ()
@property (copy, nonatomic) NSArray *computers;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation NameAndColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.computers = @[@{@"Name" : @"MacBook Air", @"Color" : @"Silver"},
                       @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
                       @{@"Name" : @"iMac", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Mini", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Pro", @"Color" : @"Black"}];
    
    [self.tableView registerClass:[NameAndColorCell class] forCellReuseIdentifier:CellTableIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier forIndexPath:indexPath];
    
    NSDictionary *rowData = self.computers[indexPath.row];
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

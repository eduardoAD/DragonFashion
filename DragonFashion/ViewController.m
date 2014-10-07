//
//  ViewController.m
//  DragonFashion
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *dragons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *puffDragon = [[Dragon alloc] initWithName:@"Puff"];
    puffDragon.signatureClothingItem = @"Teddy";

    Dragon *smaugDragon = [[Dragon alloc] initWithName:@"Smaug"];
    smaugDragon.signatureClothingItem = @"High Heels";

    Dragon *falcorDragon = [[Dragon alloc] initWithName:@"Falcor"];
    falcorDragon.signatureClothingItem = @"Fedora";

    self.dragons = [NSMutableArray arrayWithObjects:puffDragon,smaugDragon,falcorDragon,nil];

    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@", dragon.name);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];

    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;

    return cell;
}


@end

//
//  Dragon.h
//  DragonFashion
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

@property (readonly) NSString *name;
@property (nonatomic) NSString *signatureClothingItem;

- (instancetype) initWithName: (NSString *) name;

@end

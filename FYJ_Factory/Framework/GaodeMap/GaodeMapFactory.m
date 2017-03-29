//
//  GaodeMapFactory.m
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "GaodeMapFactory.h"

@implementation GaodeMapFactory

-(id<IMapView>)getMapView:(CGRect)frame{
    return [[GaodeMapView alloc] initWithFrame:frame];
}

@end

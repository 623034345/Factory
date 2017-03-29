//
//  BaiduMapFactory.m
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "BaiduMapFactory.h"

@implementation BaiduMapFactory

-(id<IMapView>)getMapView:(CGRect)frame{
    return [[BaiduMapView alloc] initWithFrame:frame];
}

//包括：定位、导航...


@end

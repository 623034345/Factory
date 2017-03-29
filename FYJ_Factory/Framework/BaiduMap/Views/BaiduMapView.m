//
//  BaiduMapView.m
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface BaiduMapView ()

@property (nonatomic) BMKMapView* mapView;

@end

@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super init];
    if (self) {
        //初始化地图
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}

-(UIView*)getView{
    return _mapView;
}

@end

//
//  GaodeMapView.m
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeMapView ()

@property (nonatomic) MAMapView* mapView;

@end

@implementation GaodeMapView

//地图大小协议规范
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super init];
    if (self) {
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

//定义具体的规范
//提醒：当前的这个协议知道具体是哪个地图吗？
//面向对象(OPP)：父类引用（指针）指向子类的实例对象
- (UIView*)getView{
    return _mapView;
}


@end

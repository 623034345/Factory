//
//  IMapFactory.h
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapView.h"

//地图工厂协议
@protocol IMapFactory <NSObject>

//那些规范？
//创建地图规范
-(id<IMapView>)getMapView:(CGRect)frame;

//创建定位规范

//创建导航规范

//...

@end

//
//  MapEngine.h
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"

//地图引擎工厂(用管理多个地图工厂:工厂套工厂)
//设计工厂引擎目的：就是达到客户端不需要知道具体的工厂，只需要知道工厂协议即可(2名额)
@interface MapEngine : NSObject

-(void)initMap;

//定义规范
-(id<IMapFactory>)getFactory;

@end

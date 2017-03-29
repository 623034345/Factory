//
//  MapEngine.m
//  Dream_Architect_LBS
//
//  Created by Dream on 2017/2/27.
//  Copyright © 2017年 Tz. All rights reserved.
//

#import "MapEngine.h"
#import "BaiduMapFactory.h"
#import "PlatformXmlParser.h"

@implementation MapEngine

-(void)initMap{
    PlatformXmlParser* parser = [[PlatformXmlParser alloc] init];
    NSMutableArray* array = [parser parser];
    //动态创建实例对象(Runtime动态创建)
}

-(id<IMapFactory>)getFactory{
    return [[BaiduMapFactory alloc] init];
}

@end

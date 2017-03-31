//
//  NodeService.h
//  Node
//
//  Created by Mo Afrasiabi on 2017-03-21.
//  Copyright © 2017 mimik technology inc. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 NodeService class instantiates MimikEdge, MimikDrive, MimikBeam services and manages their lifecycle.
 To start these services simply instantiate NodeService and start the service when applicationDidBecomeActive and stop it when applicationWillResignActive.
 */
@interface NodeService : NSObject


/**
 NodeService initializer
 */
- (instancetype)init;


/**
 Starts MimikEdge, MimikDrive, MimikBeam services. This method should be called when the app activates (ex: applicationDidBecomeActive)
 */
- (void)start;


/**
 Stops MimikEdge, MimikDrive, MimikBeam services. This method should be called when the app is about to resign active (ex: applicationWillResignActive)
 */
- (void)stop;

@end

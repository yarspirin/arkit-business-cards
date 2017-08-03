//
//  Card.h
//  arkit-by-example
//
//  Created by whoami on 8/2/17.
//  Copyright © 2017 ruanestudios. All rights reserved.
//

#import <SceneKit/SceneKit.h>

#warning Yaroslav
// The class is created by me (can be compared with Cube class)
@interface Card : SCNNode

- (instancetype)initAtPosition:(SCNVector3)position withMaterial:(SCNMaterial *)material;
- (void)remove;
+ (SCNMaterial *)currentMaterial;

@end

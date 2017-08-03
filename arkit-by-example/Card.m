//
//  Card.m
//  arkit-by-example
//
//  Created by whoami on 8/2/17.
//  Copyright © 2017 ruanestudios. All rights reserved.
//

#import "Card.h"
#import "CollisionCategory.h"
#import "PBRMaterial.h"

#warning Yaroslav
// All things here added by me

@implementation Card

- (instancetype)initAtPosition:(SCNVector3)position withMaterial:(SCNMaterial *)material {
    self = [super init];
    
    SCNScene *scene = [SCNScene sceneNamed:@"Assets.scnassets/card.dae"];
    SCNNode *node = [[scene rootNode] childNodeWithName:@"Cube" recursively:YES];
    
    // The physicsBody tells SceneKit this geometry should be manipulated by the physics engine
    node.physicsBody = [SCNPhysicsBody bodyWithType:SCNPhysicsBodyTypeStatic shape:nil];
    node.physicsBody.mass = 0.005;
    node.physicsBody.categoryBitMask = CollisionCategoryCube;
    node.position = position;
    node.physicsBody.angularDamping = 1.0;
    node.rotation = SCNVector4Make(0, 1, 0, M_PI / 2);
    
    [self addChildNode:node];
    return self;
}

+ (SCNMaterial *)currentMaterial {
    NSString *materialName;
    return [[PBRMaterial materialNamed:materialName] copy];
}

- (void) remove {
    [self removeFromParentNode];
}

@end

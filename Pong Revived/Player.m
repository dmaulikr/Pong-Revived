//
//  Player.m
//  Pong Revived
//
//  Created by Alessandro Vinciguerra on 10/19/13.
//  Copyright (c) 2013 Alessandro Vinciguerra (Arc676). All rights reserved.
//

#import "Player.h"

@implementation Player

- (id) init{
    self.x = START_X;
    self.y = (MAX_HEIGHT - HEIGHT)/2;
    self.side = -1;
    return [super init];
}

- (void) update:(BOOL)up down:(BOOL)down{
    if (up) {
        if (!down) {
            self.moving = YES;
        }
        if (self.y <= MAX_HEIGHT - HEIGHT) {
            self.y++;
        }
    }
    if (down) {
        if (!up) {
            self.moving = YES;
        }
        if (self.y >= 0) {
            self.y--;
        }
    }
    if (!down && !up) {
        self.moving = NO;
    }
}

@end
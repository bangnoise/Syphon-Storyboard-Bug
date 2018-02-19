//
//  ViewController.m
//  Storyboard Bug
//
//  Created by Tom Butterworth on 2018-02-19.
//  Copyright © 2018 Derivative. All rights reserved.
//

#import "ViewController.h"
#import <Syphon/Syphon.h>

@implementation ViewController {
    SyphonServerDirectory *_directory;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _directory = [SyphonServerDirectory sharedDirectory];
    NSArray *servers = _directory.servers;
    NSLog(@"servers at viewDidLoad:%lu", servers.count);
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)mouseUp:(NSEvent *)event
{
    NSArray *servers = _directory.servers;
    NSLog(@"server count: %lu", servers.count);
}
@end

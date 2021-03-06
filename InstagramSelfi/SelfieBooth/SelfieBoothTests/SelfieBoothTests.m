//
//  SelfieBoothTests.m
//  SelfieBoothTests
//
//  Created by Jitendra Rajoria on 01/23/15.
//  Copyright (c) 2015 Jitendra Rajoria. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "SelfieCollectionViewController.h"

@interface SelfieBoothTests : XCTestCase
@property (nonatomic, strong) SelfieCollectionViewController *scv;
@end

@implementation SelfieBoothTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.scv = [SelfieCollectionViewController new];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.scv = nil;
}


-(void)testIfCollectionView {
    
    XCTAssertTrue([self.scv isKindOfClass:[UICollectionViewController class]], @"SelfieCollectionViewController should be a subclass of UICollectionView");
}

-(void)testIfViewControllerIsNil {
    
    XCTAssertNotNil([self.scv view], @"ViewController should contain a view");
}


@end

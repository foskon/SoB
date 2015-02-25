//
//  AppDependenciesTests.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 25/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//


import UIKit
import XCTest
import SoB


class AppDependenciesTests: XCTestCase
{
    
    override func setUp() {
        
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    override func tearDown() {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testsShouldInitializeLootCardsModuleOnInit() {
        
        let appDependencies = AppDependencies()
    }
    
    
    func testsShouldInstallLootCardsViewController() {
        
        // Given
        class MockLootCardsRouter: LootCardsRouter
        {
            var isPresented = false

            private override func presentLootCardsInterfaceFromWindow(window: UIWindow) {
                
                self.isPresented = true
            }
        }
        
        let mockLootCardsRouter = MockLootCardsRouter()
        let appDependencies = AppDependencies(lootCardsRouter: mockLootCardsRouter)
        
        // When
        appDependencies.installRootViewControllerIntoWindow(UIWindow())
        
        // Then
        XCTAssertTrue(mockLootCardsRouter.isPresented)
    }
}





//
//  LootInteractorTests.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 24/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit
import XCTest
import SoB

class LootCardsInteractorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testShouldReturnRandomLoorCard() {
        // Given
        //
        class MockOutput: LootCardsInteractorOutputProtocol
        {
            private func interactorGotLootCard(card: LootCard) {
                // Then
                //
                XCTAssertEqual(card.cardId,             "identifier")
                XCTAssertEqual(card.cardDescription,    "description")
                XCTAssertEqual(card.cardName,           "name")
            }
        }
        
        // And given
        //
        class MockDataManager: LootCardsDataManager
        {
            private override func lootCardRandomly(complete: ((card: LootCard?) -> Void)?) {
                if let localComplete = complete {
                    localComplete(card: LootCard(identifier: "identifier", name: "name", description: "description"))
                }
            }
        }
        
        // And given
        //
        let interactor = LootCardsInteractor(dataManager: MockDataManager(), output: MockOutput())
        
        // When
        //
        interactor.interactorGetLootCardRandomly()
    }
}





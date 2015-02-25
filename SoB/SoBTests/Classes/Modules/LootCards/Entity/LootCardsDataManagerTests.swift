//
//  LootCardsDataManagerTests.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 24/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit
import XCTest
import SoB

class LootCardsDataManagerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldGetRandomLootCard() {
        let dataManager = LootCardsDataManager()
        dataManager.lootCardRandomly { (card) -> Void in
            XCTAssertNotNil(card)
            let localCard = card!
            XCTAssertEqual(localCard.cardName,          "name")
            XCTAssertEqual(localCard.cardDescription,   "description")
            XCTAssertEqual(localCard.cardId,            "identifier")
        }
    }
}

//
//  LootCardsDataManager.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


class LootCardsDataManager: NSObject
{
    func lootCardRandomly(complete: ((card: LootCard?) -> Void)?) {
        
        // get loot card from service or from persistence manager
        let card = LootCard(identifier: "identifier", name: "name", description: "description")
        
        if let lComplete = complete {
            lComplete(card: card)
        }
    }
}

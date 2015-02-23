//
//  LootCardsInteractor.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


class LootCardsInteractor: NSObject
{
    var _lootCardsDataManager: LootCardsDataManager
    
    init(lootCardsDataManager: LootCardsDataManager) {
        _lootCardsDataManager = lootCardsDataManager
        
        super.init()
    }
}

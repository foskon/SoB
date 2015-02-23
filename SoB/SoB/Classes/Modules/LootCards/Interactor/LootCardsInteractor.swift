//
//  LootCardsInteractor.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


class LootCardsInteractor: NSObject, LootCardsInteractorInputProtocol
{
    var dataManager    : LootCardsDataManager
    var output         : LootCardsInteractorOutputProtocol
    
    init(dataManager: LootCardsDataManager, output: LootCardsInteractorOutputProtocol) {
        self.dataManager    = dataManager
        self.output         = output
        
        super.init()
    }
}


extension LootCardsInteractor: LootCardsInteractorInputProtocol
{
    func interactorGetLootCardRandomly() {
        self.dataManager.lootCardRandomly { (card) -> Void in
            if let lCard = card {
                self.output.interactorGotLootCard(lCard)
            }
        }
    }
}

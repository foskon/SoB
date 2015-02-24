//
//  LootCardsInteractor.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


public class LootCardsInteractor: LootCardsInteractorInputProtocol
{
    var dataManager    : LootCardsDataManager
    var output         : LootCardsInteractorOutputProtocol
    
    public init(dataManager: LootCardsDataManager, output: LootCardsInteractorOutputProtocol) {
        self.dataManager    = dataManager
        self.output         = output
    }
}


extension LootCardsInteractor: LootCardsInteractorInputProtocol
{
    public func interactorGetLootCardRandomly() {
        self.dataManager.lootCardRandomly { (card) -> Void in
            if let lCard = card {
                self.output.interactorGotLootCard(lCard)
            }
        }
    }
}

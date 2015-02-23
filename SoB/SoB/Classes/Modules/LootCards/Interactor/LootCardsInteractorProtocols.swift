//
//  LootCardsInteractorProtocols.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit

protocol LootCardsInteractorInputProtocol
{
    func interactorGetLootCardRandomly()
}

protocol LootCardsInteractorOutputProtocol
{
    func interactorGotLootCard(card: LootCard)
}

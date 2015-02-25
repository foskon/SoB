//
//  LootCardsInteractorProtocols.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//


import UIKit


public protocol LootCardsInteractorInputProtocol
{
    func interactorGetLootCardRandomly()
}


public protocol LootCardsInteractorOutputProtocol
{
    func interactorGotLootCard(card: LootCard)
}





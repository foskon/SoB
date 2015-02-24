//
//  LootCard.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


public class LootCard
{
    public let cardId              : String
    public let cardName            : String
    public let cardDescription     : String
    
    public init(identifier: String, name: String, description: String) {
        self.cardId             = identifier
        self.cardName           = name
        self.cardDescription    = description
    }
}

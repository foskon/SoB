//
//  LootCard.swift
//  SoB
//
//  Created by Carlos Manzanas Navia on 23/2/15.
//  Copyright (c) 2015 Carlos Manzanas Navia. All rights reserved.
//

import UIKit


class LootCard: NSObject
{
    let cardId              : String
    let cardName            : String
    let cardDescription     : String
    
    init(identifier: String, name: String, description: String) {
        self.cardId             = identifier
        self.cardName           = name
        self.cardDescription    = description
        
        super.init()
    }
}

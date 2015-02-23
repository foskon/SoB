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
    let _identifier      : String
    let _name            : String
    let _description     : String
    
    init(identifier: String, name: String, description: String) {
        _identifier     = identifier
        _name           = name
        _description    = description
    }
}

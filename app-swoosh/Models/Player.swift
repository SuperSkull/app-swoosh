//
//  Player.swift
//  app-swoosh
//
//  Created by thanhbh on 5/8/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import Foundation

struct Player {
    var desiredLeague: String!
    var selectedSkillLevel: String!
    
    init(_ desiredLeague: String?, _ selectedSkillLevel: String?) {
        self.desiredLeague = desiredLeague
        self.selectedSkillLevel = desiredLeague
    }
}

//
//  Player.swift
//  6. ScoreKeeper
//
//  Created by 이윤진 on 4/14/26.
//

import Foundation

struct Player : Identifiable {
    let id = UUID()
    var name : String
    var score : Int
}


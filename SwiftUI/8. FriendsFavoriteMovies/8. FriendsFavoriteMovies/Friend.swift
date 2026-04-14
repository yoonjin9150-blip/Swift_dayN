//
//  Friend.swift
//  8. FriendsFavoriteMovies
//
//  Created by 이윤진 on 4/14/26.
//

import Foundation
import SwiftData


@Model

class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    static let sampleData = [
        Friend(name: "Elena"),
        Friend(name: "Graham"),
        Friend(name: "Mayuri"),
        Friend(name: "Rich"),
        Friend(name: "Rudy"),
    ]
}

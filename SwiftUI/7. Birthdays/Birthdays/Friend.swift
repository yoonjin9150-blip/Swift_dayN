//
//  Friend.swift
//  Birthdays
//
//  Created by 이윤진 on 4/14/26.
//

import Foundation
import SwiftData

@Model

class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}

//
//  Comment.swift
//  Boilerplate
//
//  Created by Li Kai on 3/3/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import Foundation
import RealmSwift

class Comment: Object {

    // swiftlint:disable:next variable_name
    dynamic var id: Int = -1

    dynamic var root: Story?
    dynamic var parent: Comment?
    let kids = List<IntObject>()
    let comments = List<Comment>()

    dynamic var author: String = ""
    dynamic var time: Date = Date()
    dynamic var score: Int = 0
    dynamic var text: String = ""

}

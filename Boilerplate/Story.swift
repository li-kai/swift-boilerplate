//
//  Story.swift
//  Boilerplate
//
//  Created by Li Kai on 3/3/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class Story: Object, Mappable {

    // swiftlint:disable:next variable_name
    dynamic var id: Int = -1

    let kids = List<IntObject>()
    let comments = List<Comment>()

    dynamic var author: String = ""
    dynamic var time: Date = Date()
    dynamic var score: Int = 0
    dynamic var text: String = ""
    dynamic var url: String = ""
    dynamic var title: String = ""
    dynamic var descendants: Int = 0

    required convenience init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        id <- map["id"]
        author <- map["by"]
        time <- (map["time"], DateTransform())
        text <- map["text"]
        url <- map["url"]
        title <- map["title"]
        descendants <- map["descendants"]
        guard let map["kids"] as [Int] else {
            print("could not cast to kids")
        }
    }

}

class IntObject: Object {
    dynamic var value: Int = 0
}

//
//  Story.swift
//  Boilerplate
//
//  Created by Li Kai on 3/3/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import Foundation
import RealmSwift

class Story: Object {

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

    convenience init?(json: [String: Any]) {
        guard let id = json["id"],
        let author = json["by"],
        let time = json["time"],
        let score = json["score"] else {
            return nil
        }
        self.id = id
        self.author = author
    }

    func mapping(map: Map) {
        id <- map["id"]
        author <- map["by"]
        time <- (map["time"], DateTransform())
        text <- map["text"]
        url <- map["url"]
        title <- map["title"]
        descendants <- map["descendants"]
        let array = Mapper<Object>().mapArray(JSONString: json)
        guard let map["kids"] as [Int] else {
            print("could not cast to kids")
        }
    }

}

class IntObject: Object {
    dynamic var value: Int = 0
}

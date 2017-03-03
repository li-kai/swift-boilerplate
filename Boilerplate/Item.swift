//
//  Item.swift
//  Boilerplate
//
//  Created by Li Kai on 2/3/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import Foundation
import RealmSwift

/*
class Item: Object {

    enum ItemType: String {
        case job = "job"
        case story = "story"
        case comment = "comment"
        case poll = "poll"
        case pollopt = "pollopt"
    }

    dynamic var id: Int = 0
    dynamic var deleted = false
    fileprivate var typeString: String? = nil
    dynamic var by: String? = nil
    dynamic var time: NSDate? = nil
    let score = RealmOptional<Int>()
    dynamic var text: String? = nil
    let parent = RealmOptional<Int>()
    // let kids = List<Int64>()
    dynamic var url: String? = nil
    dynamic var title: String? = nil
    // let parts = List<Int64>()
    let descendants = RealmOptional<Int>()

    /*
    init?(json: [String: Any]) {
        if let id = json["deleted"] as? Int {
            self.id = id
        }
        score = json["score"] as? Int
        title = json["title"] as? String
        text = json["text"] as? String
    }*/

}

extension Item {

    var type: ItemType? {
        get {
            guard let typeRawValue = typeString else {
                return nil
            }
            return ItemType(rawValue: typeRawValue)
        }
        set {
            typeString = type?.rawValue
        }
    }

}
 */

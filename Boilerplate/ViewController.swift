//
//  ViewController.swift
//  Boilerplate
//
//  Created by Li Kai on 28/2/17.
//  Copyright © 2017 nus.cs3217.li-kai. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let apiRoot = "https://hacker-news.firebaseio.com/v0/"

    private func apiUrl(_ path: String) -> String {
        return apiRoot + path + ".json"
    }

    private func itemUrl(_ path: String) -> String {
        return apiRoot + "item/" + path + ".json"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(apiUrl("topstories")).responseJSON { response in
            guard let topStories = response.result.value as? [Int] else {
                print("could not retrieve data")
                return
            }
            Alamofire.request(self.itemUrl(String(topStories[1]))).responseJSON { response in
                guard let post = response.result.value as? [String: Any] else {
                    print("could not retrieve data")
                    return
                }
                print("post \(post)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

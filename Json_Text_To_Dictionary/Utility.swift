//
//  Utility.swift
//  Json_Text_To_Dictionary
//
//  Created by Leo on 2/4/17.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class Utility: NSObject {

    class func getDictionaryFromJSONFile(resourceName: String, extention: String) -> [String:Any] {

        let bundle = Bundle.main
        if let theURL = bundle.url(forResource: resourceName, withExtension: extention) {
            do {
                let data = try Data(contentsOf: theURL)
                if let dictionaryParsedData = try? JSONSerialization.jsonObject(with: data) as! [String:Any] {
                    print(dictionaryParsedData)
                    return dictionaryParsedData
                }
            } catch {
                print(error)
            }
        }
        return [:]
    }

}

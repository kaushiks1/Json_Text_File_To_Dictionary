//
//  ViewController.swift
//  Json_Text_To_Dictionary
//
//  Created by Leo on 2/4/17.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let dictionaryTemp = Utility.getDictionaryFromJSONFile(resourceName: "jsonFile", extention: "json")

        print(dictionaryTemp)
        print(dictionaryTemp["result_data"])


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


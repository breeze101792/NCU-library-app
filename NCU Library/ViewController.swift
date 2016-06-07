//
//  ViewController.swift
//  NCU Library
//
//  Created by nculib on 2016/4/29.
//  Copyright © 2016年 NCU. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var searchBox: UITextField!
    @IBOutlet weak var taLog: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispos of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    @IBAction func btnSearch(sender: UIButton) {
        let url = "https://www2.lib.ncu.edu.tw/~nfsnfs/mobile-new/api/search?query=php"
//        let url = "http://www.google.com"
//        taLog.text = "test"
//        Alamofire.request(.POST, url, parameters: parameters, encoding:.JSON)
        Alamofire.request(.GET, url)
            .responseJSON
            { response in switch response.result {
            case .Success(let JSON):
                self.taLog.text = "success\n\(JSON)"
//                self.taLog.text += JSON as! String
//                print("Success with JSON: \(JSON)")
//                
//                let response = JSON as! NSDictionary
//                
//                //example if there is an id
//                let userId = response.objectForKey("id")!
                
            case .Failure(let error):
                self.taLog.text = "search error\(error)"
                print("Request failed with error: \(error)")
                }
        }
        
        
    }


}


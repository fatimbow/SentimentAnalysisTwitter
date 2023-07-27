//
//  ViewController.swift
//  SentimentAnalysisTwitter
//
//  Created by fatma y on 19.07.2023.
//

import UIKit
import SwifteriOS

var apiKey: String {
  get {
    guard let filePath = Bundle.main.path(forResource: "Secrets", ofType: "plist") else {
      fatalError("Couldn't find file 'Secrets.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "API_Key") as? String else {
      fatalError("Couldn't find key 'API_Key' in 'Secrets.plist'.")
    }
    return value
  }
}

var apiSecret: String {
  get {
    guard let filePath = Bundle.main.path(forResource: "Secrets", ofType: "plist") else {
      fatalError("Couldn't find file 'Secrets.plist'.")
    }
    let plist = NSDictionary(contentsOfFile: filePath)
    guard let value = plist?.object(forKey: "API_Secret") as? String else {
      fatalError("Couldn't find key 'API_Secret' in 'Secrets.plist'.")
    }
    return value
  }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var sentimentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let swifter = Swifter(consumerKey: apiKey , consumerSecret: apiSecret)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    @IBAction func predictButton(_ sender: UIButton) {
        
    }
    
}


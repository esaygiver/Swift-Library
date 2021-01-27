//
//  ViewController.swift
//  Concurrency
//
//  Created by admin on 7.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }
    
    func callBackground() {
        DispatchQueue.global(qos: .unspecified).async {
            // do stuff here
        }
    }


    func getData() {
        guard let url = URL(string: "") else {
            return  }
        let task = URLSession.shared.dataTask(with: url) {[weak self] (data, resp, error) in
            if error != nil {
                print(error!)
                return
            }
            
            DispatchQueue.main.async {
                self?.view.backgroundColor = .red
            }
        }
    }
}

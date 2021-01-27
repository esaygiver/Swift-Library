//
//  ViewController.swift
//  ReduceMapFilter
//
//  Created by admin on 8.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpArray()
        tableView.dataSource = self
    }
    
    func setUpArray() {
        array.append("Jack")
        array.append("Jane")
        array.append("Jonas")
        array.append("Jamie")
        array.append("Danny")
        array.append("Damond")
        array.append("Delle")
        array.append("Dax")
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        array.removeAll()
        setUpArray()
        
        if sender.selectedSegmentIndex == 1 {
            array = array.filter { $0.starts(with: "J")  }
        } else if sender.selectedSegmentIndex == 2 {
            array = array.filter { $0.starts(with: "D")
            }
        }
        tableView.reloadData()
    }
        
}


//MARK: - TableView Data Source

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}

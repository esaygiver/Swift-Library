//
//  TableViewController.swift
//  Dispatch Group
//
//  Created by admin on 6.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController  {
    
    let groupA = ["esay", "ebuş"]
    let groupB = ["oko", "doruk"]
    let groupC = ["hakuş"]
    
    var users = [String]()
    
     override func viewDidLoad() {
            super.viewDidLoad()
        }
        
    
    // firstly you need to creat a constant like dispatchGroup type of DispatchGroup(), then you need a enter() and after that leave() for the data comin. Finally you need to use notify keyword
    
        let dispatchGroup = DispatchGroup()
        
        func run(after seconds: Int, completion: @escaping () -> Void) {
            let deadline = DispatchTime.now() + .seconds(seconds)
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                completion()
            }
        }
    
        func getGroupA() {
            dispatchGroup.enter()
            run(after: 2) {
                print("Got A, Başıbüyüğe gelir")
                self.users.append(contentsOf: self.groupA)
                self.dispatchGroup.leave()
            }
        }
        
        func getGroupB() {
            dispatchGroup.enter()
            run(after: 4) {
                print("Got B, ananı")
                self.users.append(contentsOf: self.groupB)
                self.dispatchGroup.leave()
            }
        }
        
        func getGroupC() {
            dispatchGroup.enter()
            run(after: 6) {
                print("Got C, sikerim")
                self.users.append(contentsOf: self.groupC)
                self.dispatchGroup.leave()
                
            }
        }
        
        func displayUsers() {
            print("Reloading Data, şişmen:)")
            tableView.reloadData()
        }
        
    
        @IBAction func downloadButtonTapped(_ sender: Any) {
            print("downloading")
            getGroupA()
            getGroupB()
            getGroupC()
            
            dispatchGroup.notify(queue: .main) {
                self.displayUsers()
            }
        }

    //MARK: - TableView Data Source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return users.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = users[indexPath.row]
            return cell
        }
    
}



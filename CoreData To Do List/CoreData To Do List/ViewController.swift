//
//  ViewController.swift
//  CoreData To Do List
//
//  Created by admin on 1.01.2021.
//  Copyright © 2021 esaygiver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var model = [ToDoListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Core Data"
        view.addSubview(tableView)
        getAllItems()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    @objc private func didTapAdd() {
        let alert = UIAlertController(title: "New Item", message: "Enter new item", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Submit", style: .cancel, handler: {[weak self] _ in
            guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else {
                let error = print("there is an error about adding an action!")
                return
            }
            self?.createItem(name: text)
        }))
        present(alert, animated: true)
    }

//MARK: - CoreData
    
    private func saveBlock() {
            do {
                try context.save()
                getAllItems()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    func getAllItems() {
        do {
            model = try! context.fetch(ToDoListItem.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
    
    func createItem(name: String) {
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        saveBlock()
    }
    
    func deleteItem(item: ToDoListItem) {
        context.delete(item)
        saveBlock()
    }
    
    func updateItem(item: ToDoListItem, newName: String) {
        item.name = newName
        saveBlock()
    }
    
}

//MARK: - TableView Part
    
    extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = model[indexPath.row]
        let sheet = UIAlertController(title: "Edit", message: nil, preferredStyle: .actionSheet)
        
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        sheet.addAction(UIAlertAction(title: "Edit", style: .default, handler: { _ in
            let alert = UIAlertController(title: "Edit item", message: "Edit your item", preferredStyle: .alert)
            alert.addTextField(configurationHandler: nil)
            alert.textFields?.first?.text = item.name
            alert.addAction(UIAlertAction(title: "Submit", style: .cancel, handler: {[weak self] _ in
                guard let field = alert.textFields?.first, let newName = field.text, !newName.isEmpty else {
                    let error = print("there is an error about adding an action!")
                    return
                }
                self?.updateItem(item: item, newName: newName)
            }))
            self.present(alert, animated: true)
        }))
        
        sheet.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { [weak self] _ in
            self?.deleteItem(item: item)
        }))
        present(sheet , animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if cell != nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        let models = model[indexPath.row]
//        cell.accessoryType = models.done ? .checkmark : .none
        cell.textLabel?.text = models.name
        cell.detailTextLabel?.text = models.createdAt?.description(with: Locale(identifier: "tr_TR"))
        
        return cell
    }
}



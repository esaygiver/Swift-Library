//
//  ToDoListItem+CoreDataProperties.swift
//  CoreData To Do List
//
//  Created by admin on 1.01.2021.
//  Copyright © 2021 esaygiver. All rights reserved.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?
    @NSManaged public var done: Bool
    
}


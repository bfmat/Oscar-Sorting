//
//  Database.swift
//  Oscar Sorting
//
//  Created by Brendon Matusch on 2016-04-17.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import Foundation

class DatabaseTools {
    
    // --------------------------------- DATABASE TOOLS --------------------------------- //
    
    // This class is the only one that needs to access the database directly. It contains tools that the
    // other classes access to get information that is stored in the database.
    
    static func getTableData() -> [String]{
        return Database.originalTableData
    }
    
    static func isValueInStringArray(_ item: String, array: [String]) -> Bool {
        for i in 0...array.count - 1 {
            if (array[i] == item){
               return true
            }
        }
        return false
    }
    
    static func getMessageWithItem(_ item: String) -> String {
        let destination = getDestinationWithItem(item)
        var i = 0
        switch destination {
        case "Hazardous": i = 0
        case "Recycling": i = 1
        case "Garbage": i = 2
        case "Electronic Recycling": i = 3
        case "Compost": i = 4
        case "Large Items Pickup": i = 5
        default: i = 0
        }
        return Database.detailControllerPreText[i] + item + Database.detailControllerPostText[i]
    }

    static func getDestinationWithItem(_ j: String) -> String {
        for i in 0...Database.destinations.count - 1 {
            if (isValueInStringArray(j, array: Database.destinationArray(Database.destinations[i]))) {
                return Database.destinations[i]
            }
        }
        return "Recycling"
    }
    
    static func getCategoryWithItem(_ j: String) -> String {
        for i in 0...Database.categories.count - 1 {
            if (isValueInStringArray(j, array: Database.categoryArray(Database.categories[i]))) {
                return Database.categories[i]
            }
        }
        return "Other"
    }
    
    static func getWgwValue(_ item: String, type: String) -> String {
        var array = ["Null"]
        if (type == "Yes") {
            array = Database.wgwYesDescriptors
        } else if (type == "No") {
            array = Database.wgwNoDescriptors
        } else {
            array = Database.wgwTitles
        }
        for i in 0...Database.wgwDestinations.count - 1 {
            if (item == Database.wgwDestinations[i]){
                return array[i]
            }
        }
        return "Null"
    }
}

//
//  SearchViewController.swift
//  Oscar Sorting
//
//  Created by Brendon Matusch on 2016-01-17.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController, UISearchResultsUpdating {
    
    var specifiedCategory = ""
    
    var tableData = [String]()
    
    
    var filteredTableData = [String]()
    var resultSearchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableData()
        self.resultSearchController = ({
            let controller = UISearchController(searchResultsController: nil)
            controller.searchResultsUpdater = self
            controller.dimsBackgroundDuringPresentation = false
            controller.searchBar.sizeToFit()
            controller.searchBar.placeholder = "Search..."
            self.tableView.tableHeaderView = controller.searchBar
            return controller
        })()
        
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (self.resultSearchController.isActive) {
            return self.filteredTableData.count
        } else {
            return self.tableData.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if (self.resultSearchController.isActive) {
            cell.textLabel?.text = filteredTableData[indexPath.row]
            cell.detailTextLabel?.text = DatabaseTools.getDestinationWithItem(filteredTableData[indexPath.row])
            return cell
        } else {
            cell.textLabel?.text = tableData[indexPath.row]
            cell.detailTextLabel?.text = DatabaseTools.getDestinationWithItem(tableData[indexPath.row])
            return cell
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        filteredTableData.removeAll(keepingCapacity: false)
        let searchPredicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
        let array = (tableData as NSArray).filtered(using: searchPredicate)
        filteredTableData = array as! [String]
        self.tableView.reloadData()
    }
    
        
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let destinationController = segue.destination as! DetailViewController
            if self.resultSearchController.isActive {
                destinationController.TITLE_LABEL = filteredTableData[indexPath.row]
                destinationController.DESTINATION_LABEL = DatabaseTools.getDestinationWithItem(filteredTableData[indexPath.row])
                destinationController.DESCRIPTION_LABEL = DatabaseTools.getMessageWithItem(filteredTableData[indexPath.row])
            } else {
                destinationController.TITLE_LABEL = tableData[indexPath.row]
                destinationController.DESTINATION_LABEL = DatabaseTools.getDestinationWithItem(tableData[indexPath.row])
                destinationController.DESCRIPTION_LABEL = DatabaseTools.getMessageWithItem(tableData[indexPath.row])
            }
        }
    }

    
    func getTableData() -> [String] {
        return tableData
    }
    
        
    func configureTableData() {
        let data = DatabaseTools.getTableData()
        if specifiedCategory == "" {
            tableData = data
        } else {
            for i in 1...DatabaseTools.getTableData().count - 1 {
                if DatabaseTools.getCategoryWithItem(data[i]) == specifiedCategory {
                    tableData += [data[i]]
                }
            }
        }
    }
}

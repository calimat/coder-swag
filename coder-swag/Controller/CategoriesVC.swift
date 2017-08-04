//
//  ViewController.swift
//  coder-swag
//
//  Created by Ricardo Herrera Petit on 8/3/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var categoryTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            if let category = DataService.instance.getCategories()[indexPath.row] as? Category {
                cell.updateViews(category: category)
                return cell
            }
        } else {
            return CategoryCell()
        }
        
        
        
    }
    
}

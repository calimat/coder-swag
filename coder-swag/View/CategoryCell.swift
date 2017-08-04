//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Ricardo Herrera Petit on 8/3/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTilte: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTilte.text = category.title
    }

}

//
//  Category.swift
//  coder-swag
//
//  Created by Ricardo Herrera Petit on 8/3/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title:String
    private (set) public var imageName:String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

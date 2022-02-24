//
//  Person.swift
//  IvanZrvnarPersistence1
//
//  Created by Ivan Zrvnar on 2022-02-23.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
    }
}

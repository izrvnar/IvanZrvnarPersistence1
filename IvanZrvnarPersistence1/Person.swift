//
//  Person.swift
//  IvanZrvnarPersistence1
//
//  Created by Ivan Zrvnar on 2022-02-23.
//

import UIKit

class Person: NSObject, NSCoding {
    
    // conforming to the NSCoding protocol
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
         aCoder.encode(image, forKey: "image")
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        image = aDecoder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    var name: String
    var image: String
    
    init(name: String, image: String){
        self.name = name
        self.image = image
    }
}

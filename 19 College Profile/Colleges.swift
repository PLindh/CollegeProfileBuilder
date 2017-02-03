//
//  Colleges.swift
//  19 College Profile
//
//  Created by Plindh on 2/1/17.
//  Copyright © 2017 Plindh. All rights reserved.
//

import UIKit

class Colleges: NSObject {

   var name = String()
   var location = String()
   var numStudents = Int()
   var image = Data()
    
    convenience init(name: String, location: String, numStudents: Int, image: Data) {
        self.init()
        self.name = name
        self.location = location
        self.numStudents = numStudents
        self.image = image
    }
    
}

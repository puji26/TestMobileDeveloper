//
//  itemList.swift
//  TestMobileIOSDeveloper
//
//  Created by Puji Wahono on 13/08/20.
//  Copyright © 2020 Puji Wahono. All rights reserved.
//

import Foundation
import UIKit

struct  ItemList  {
    var name : String?
    var image : UIImage?
    
    init(name:String,image:UIImage?) {
        self.name = name
        self.image = image
    }
}

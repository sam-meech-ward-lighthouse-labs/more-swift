//
//  Design.swift
//  W04D2
//
//  Created by Sam Meech-Ward on 2019-05-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

//typealias UIColour😘 = UIColor

@objcMembers class Design: NSObject {
  
  let pattern: String
  let colour: String
  
  init(pattern: String, colour: String) {
    self.pattern = pattern
    self.colour = colour
    super.init()
  }

}



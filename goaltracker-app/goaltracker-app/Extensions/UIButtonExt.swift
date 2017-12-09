//
//  UIButtonExt.swift
//  goaltracker-app
//
//  Created by adolfo reyes on 12/8/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

extension UIButton{
    func setSelectedColor(){
        self.backgroundColor = #colorLiteral(red: 1, green: 0.7426839363, blue: 0.3095963934, alpha: 1)
    }
    
    func setDeselectedColor(){
        self.backgroundColor = #colorLiteral(red: 1, green: 0.8298398852, blue: 0.2543682456, alpha: 1)
    }
}

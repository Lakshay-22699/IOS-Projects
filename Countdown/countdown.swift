//
//  countdown.swift
//  Countdown
//
//  Created by Lakshay Saini on 14/12/21.
//

import Foundation
import UIKit

class countdown {
    
    var image: UIImage
    var countdownName: String
    var date: String
    var timer: String
    var bgcolor: UIColor
    
    init(image: UIImage, countdownName: String , date: String, timer: String, bgcolor: UIColor) {
        self.image = image
        self.countdownName = countdownName
        self.date = date
        self.timer = timer
        self.bgcolor = bgcolor
    }
    
}

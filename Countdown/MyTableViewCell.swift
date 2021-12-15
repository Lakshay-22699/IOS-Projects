//
//  MyTableViewCell.swift
//  Countdown
//
//  Created by Lakshay Saini on 14/12/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiImg: UIImageView!
    @IBOutlet weak var countdownName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var timer: UILabel!
    
    
    func setCountdown(remaindar: countdown) {
        
        emojiImg.image = remaindar.image
        countdownName.text = remaindar.countdownName
        date.text = remaindar.date
        timer.text = remaindar.timer
        
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        let padding = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
//        bounds = bounds.inset(by: padding)
//    }
    
    override open var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 5
            frame.origin.x += 5
            frame.size.height -= 5
            frame.size.width -= 2 * 5
            super.frame = frame
        }
    }

    override open func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.masksToBounds = false
    }

}

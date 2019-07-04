//
//  CustomCell.swift
//  keppSApp
//
//  Created by Makcim Mikhailov on 02.07.19.
//  Copyright © 2019 Makcim Mikhailov. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var bottomProgress: UIProgressView!
    
    func setTopCenterText(text: String,centerText: String) {
        topLabel.text = text
        centerLabel.text = centerText
        leftImage.image = #imageLiteral(resourceName: "r_icon")
    }
    func setProgress(){
         bottomProgress.progress = 50
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

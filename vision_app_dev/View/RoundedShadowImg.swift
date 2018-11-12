//
//  RoundedShadowImg.swift
//  vision_app_dev
//
//  Created by Mac on 11/12/18.
//  Copyright © 2018 CO.KrystynaKruchcovska. All rights reserved.
//

import UIKit

class RoundedShadowImg: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.darkGray.cgColor
        
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 75
        self.layer.cornerRadius = self.frame.height / 2
    }


}

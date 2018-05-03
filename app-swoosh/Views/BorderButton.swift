//
//  BorderButton.swift
//  app-swoosh
//
//  Created by thanhbh on 5/2/18.
//  Copyright © 2018 thanhbh. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}

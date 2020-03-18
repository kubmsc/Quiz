//
//  CustomButton.swift
//  Quiz.
//
//  Created by Kuba  on 17/03/2020.
//  Copyright © 2020 Kuba . All rights reserved.
//

import UIKit

class roundButton: UIButton {

    override func didMoveToWindow() {
        self.backgroundColor = .red
        self.layer.cornerRadius = self.frame.height/4
        self.setTitleColor(.yellow, for: .normal)
    }
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }

}

//
//  XSEffectView.swift
//  XSHUD
//
//  Created by AlanWang on 17/3/20.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

import UIKit

class XSEffectView: UIVisualEffectView {
    
    internal init() {
        super.init(effect: UIBlurEffect(style: .light)) //TODO
        viewSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewSetup()
    }
    
    fileprivate func viewSetup() {
        
        self.backgroundColor = UIColor(white: 0.8, alpha: 0.36)
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
        contentView.addSubview(self.content)
        
        let offSet = 20.0
        //TODO?
        let motionEffectsX = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        motionEffectsX.maximumRelativeValue = offSet
        motionEffectsX.minimumRelativeValue = -offSet
        
        let motionEffectsY = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        motionEffectsY.maximumRelativeValue = offSet
        motionEffectsY.minimumRelativeValue = -offSet
        
        //TODO
        let group = UIMotionEffectGroup()
        group.motionEffects = [motionEffectsX, motionEffectsY]
        addMotionEffect(group)
        
    }
    
    
    //TODO
    fileprivate var _content =  UIView()
    internal var content: UIView {
        get {
            return _content
        }
        set {
            _content.removeFromSuperview()
            _content = newValue
            _content.alpha = 0.85
            _content.contentMode = .center
            frame.size = _content.bounds.size
            addSubview(_content) //TODO
        }
    }
}

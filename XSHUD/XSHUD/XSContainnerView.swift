//
//  XSContainnerView.swift
//  XSHUD
//
//  Created by AlanWang on 17/3/9.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

import UIKit

class XSContainnerView: UIView {
    
    
    internal init(effectView: XSEffectView) {
        self.effectView = effectView
        super.init(frame: CGRect.zero)
        viewSetup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        effectView = XSEffectView()
        super.init(coder: aDecoder)
        viewSetup()
    }
    
    fileprivate func viewSetup() {
        self.backgroundColor = UIColor.clear;
        self.addSubview(backGroundView)
        self.addSubview(effectView)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        effectView.center = center
        backGroundView.frame = bounds
    }
    
    
    internal func showEffectView() {
        
        layer.removeAllAnimations()
        effectView.center = center
        effectView.alpha = 1.0
        isHidden = false
        
    }
    
    
    
    internal func hideEffectView(animated : Bool, completion:((Bool) -> Void)? = nil) {
        let finalize:(_ finished: Bool) -> (Void) = { finished in
            self.isHidden = true
            self.removeFromSuperview()
            completion?(finished)
        }
        
        if isHidden {
            return
        }
        
        if animated {
            UIView.animate(withDuration: 0.7, animations: { 
                self.effectView.alpha = 0.0
                self.backGroundView.alpha = 0.0;
            }, completion: { _ in
                finalize(true)
            })
            
        }else {
            self.effectView.alpha = 0.0;
            self.backGroundView.alpha = 0.0;
            finalize(true)
        }
        
        
        
    }
    
    internal func showBg (animated : Bool) {
        
        if animated {
            UIView.animate(withDuration: 0.15, animations: {
                self.backGroundView.alpha = 1.0
            })
        }else {
            self.backGroundView.alpha = 1.0
        }
    }
    
    internal func hideBg (animated : Bool) {
        if animated {
           
            UIView.animate(withDuration: 0.15, animations: { 
                self.backGroundView.alpha = 0.0
            })
            
        }else {
            backGroundView.alpha = 0.0;
        }
    }
    
    
    
    internal let effectView: XSEffectView //internal
    
    let backGroundView: UIView = {
       
        let view = UIView()
        view.backgroundColor = UIColor(white:0.0, alpha:0.3)
        view.alpha = 0.0
        return view
        
    }()
    
    
    
}

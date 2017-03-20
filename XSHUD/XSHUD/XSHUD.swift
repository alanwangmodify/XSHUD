//
//  XSHUD.swift
//  XSHUD
//
//  Created by AlanWang on 17/3/7.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

import UIKit

class XSHUD: NSObject {

    //TODO struct
    fileprivate struct Constants {
        static let sharedHUD = XSHUD()
    }
    
    open class var sharedHUD: XSHUD {
        return Constants.sharedHUD
    }
    
    public var viewToPresenton : UIView? = nil
        
    
}

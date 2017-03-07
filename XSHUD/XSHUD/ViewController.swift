//
//  ViewController.swift
//  XSHUD
//
//  Created by AlanWang on 17/3/2.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImgView = UIImageView()
        bgImgView.image = UIImage.init(named:"bg_img");
        bgImgView.backgroundColor = UIColor.yellow.withAlphaComponent(0.6);
        self.view.addSubview(bgImgView);
        
        
        
    }
    
    let homeBtn: UIButton = {
       
        let btn = UIButton();
        return btn;
        
    }()
    
    func btnClick(sender:UIButton) -> Void {
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


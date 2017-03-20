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
      
        
        //函数类型
        self.view.addSubview(self.homeBtn)
        
        
    }
    
    
    let homeBtn: UIButton = {
       
        let btn = UIButton()
        btn.frame.size = CGSize(width:100,height:100)
        btn.frame.origin = CGPoint(x:100,y:100)
        btn.backgroundColor = UIColor.gray
//        btn.addTarget(self, action: #selector(btnClick(sender:)), for:
//            .touchUpInside)
        return btn;
        
    }()
    
     func btnClick(sender:UIButton) -> Void {
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


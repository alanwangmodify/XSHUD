//
//  XSHUDBaseView.swift
//  XSHUD
//
//  Created by AlanWang on 17/3/7.
//  Copyright © 2017年 AlanWang. All rights reserved.
//

import UIKit

open class XSHUDBaseView: UIView {
    
    static let defaultFrame = CGRect(origin: CGPoint.zero, size: CGSize(width: 156.0, height: 156.0))
    
    public override init(frame: CGRect) {
        super.init(frame: frame);
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public init(image: UIImage? = nil, title: String? = nil, subtitle: String? = nil) {
        super.init(frame: XSHUDBaseView.defaultFrame)
        
        self.imgView.image = image;
        self.titleLab.text = title;
        self.subTitleLab.text = subtitle;
        
        self.addSubview(self.titleLab);
        self.addSubview(self.imgView);
        self.addSubview(self.subTitleLab);
        
    }
    
    open let imgView: UIImageView = {
       
        let imgView = UIImageView()
        imgView.alpha = 0.9
        imgView.clipsToBounds = true
        imgView.contentMode = .center
        return imgView
        
    }()

    open let titleLab: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        label.textColor = UIColor.black.withAlphaComponent(0.85)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.25
        return label
    }()
    
    open let subTitleLab: UILabel = {
        let subTitleLab = UILabel()
        subTitleLab.textAlignment = .center //TODO
        subTitleLab.font = UIFont.systemFont(ofSize: 14.8)
        subTitleLab.textColor = UIColor.black.withAlphaComponent(0.8)
        subTitleLab.adjustsFontSizeToFitWidth = true
        subTitleLab.numberOfLines = 2
        subTitleLab.minimumScaleFactor = 0.25; //TODO
        return subTitleLab;
    }()
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        let viewWidth: CGFloat = self.bounds.size.width;
        let viewHeight: CGFloat = self.bounds.size.height;
        
        self.titleLab.frame = CGRect(origin:CGPoint.zero,size:CGSize(width:viewWidth,height:viewHeight/4.0))
        self.imgView.frame = CGRect(origin:CGPoint(x:0.0,y:viewHeight/4.0),size:CGSize(width:viewWidth,height:viewHeight/2))
        self.subTitleLab.frame = CGRect(origin: CGPoint(x:0.0, y:viewHeight/4.0*3.0), size: CGSize(width: viewWidth, height: viewHeight/4))
        
    }
}

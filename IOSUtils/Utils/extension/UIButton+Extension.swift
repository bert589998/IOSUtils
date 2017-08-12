//
//  UIButton+Extension.swift
//  budejie
//
//  Created by 赵磊 on 2017/3/12.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import Foundation
import UIKit;

extension UIButton {
    
    func zl_imageButton(image : String , hlImage : String , target : AnyObject, action : Selector) -> UIButton{
        let btn = UIButton();
        btn.setImage(UIImage(named:image), for: .normal);
        btn.setImage(UIImage(named:hlImage), for: .highlighted);
        btn.addTarget(target, action: action, for: .touchUpInside);
        btn.sizeToFit();
        
        return btn;
    }
    
    func zl_imageTextButton(image : String , hlImage : String , target : AnyObject, action : Selector , text:String) -> UIButton {
        let btn = UIButton();
        btn.setImage(UIImage(named:image), for: .normal);
        btn.setImage(UIImage(named:hlImage), for: .highlighted);
        btn.addTarget(target, action: action, for: .touchUpInside);
        
        btn.setTitle(text, for: []);
        btn.setTitleColor(UIColor.black, for: []);
        btn.setTitleColor(UIColor.orange, for: .highlighted);
        
        // 按钮左移一点
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0);
        
        btn.sizeToFit();
        
        return btn;
        
    }
    
}

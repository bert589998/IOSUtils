//
//  UIBarButtonItem+Extension.swift
//  budejie
//
//  Created by 赵磊 on 2017/3/12.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    class func itemWith(image : String , hlImage : String , target : AnyObject, action : Selector) -> UIBarButtonItem{
        let btn = UIButton().zl_imageButton(image: image, hlImage: hlImage, target: target, action: action);
        
        let item = UIBarButtonItem(customView: btn);
        
        return item;
        
    }
    
}

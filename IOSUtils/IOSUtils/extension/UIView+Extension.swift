//
//  UIView+Extension.swift
//  budejie
//
//  Created by 赵磊 on 2017/4/1.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit

extension UIView{
    
    // 设置frame的y 值
    var zl_y:CGFloat{
        get{
            return self.frame.origin.y;
        }
        set(value){
            frame.origin.y = value;
        }
        
    }
    
    // 设置frame的x 值
    var zl_x:CGFloat{
        get{
            return self.frame.origin.x;
        }
        set(value){
            frame.origin.x = value;
        }
        
    }
    
    // 获取frame的高度
    var zl_height:CGFloat{
        get{
            return frame.size.height;
        }
        set(value){
            frame.size.height = value;
        }
    }
    
    // 获取frame的宽度
    var zl_width:CGFloat{
        get{
            return frame.size.width;
        }
        set(value){
            frame.size.width = value;
        }
    }
    
    // 获取最右端位置
    var zl_right:CGFloat{
        get{
            return zl_x + zl_width;
        }
    }
    
    // 获取底部位置
    var zl_bottom:CGFloat{
        get{
            return zl_y + zl_height;
        }
    }
    
    class func viewFromXib(_ obj : AnyObject) -> Any{
        let nib = UINib(nibName: NSStringFromClass(obj as! AnyClass), bundle: nil);
        
        let v = nib.instantiate(withOwner: nil, options: nil)[0];

        return v;
    }
    
}

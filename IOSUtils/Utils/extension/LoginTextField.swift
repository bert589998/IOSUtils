//
//  LoginTextField.swift
//  budejie
//
//  Created by 赵磊 on 2017/3/30.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit


/// 登录注册界面的文本框
class LoginTextField: UITextField {

    override func awakeFromNib() {
        self.tintColor = UIColor.white;
        
        var attrs = [String:Any]();
        attrs[NSForegroundColorAttributeName] = UIColor.darkGray;
        
        let ptext = NSAttributedString(string: self.placeholder!, attributes: attrs);
        self.attributedPlaceholder = ptext;

        
        addTarget(self, action: #selector(edit), for: .editingDidBegin);
        addTarget(self, action: #selector(endEdit), for: [.editingDidEnd]);
        
    }
    
    func edit(text : UITextField ){
        
        setPlaceholderColor(UIColor.white);
    }
    
    func endEdit(text : UITextField ){
        setPlaceholderColor(UIColor.darkGray);
    }


}


extension UITextField{
    
    func setPlaceholderColor(_ color : UIColor){
        let ptext = NSAttributedString(string: self.placeholder!, attributes: [NSForegroundColorAttributeName:color]);
        self.attributedPlaceholder = ptext;
    }
    
    
}

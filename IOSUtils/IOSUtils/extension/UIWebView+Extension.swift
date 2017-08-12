//
//  UIWebView+Extension.swift
//  jiance
//
//  Created by 赵磊 on 2017/6/1.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit

extension UIWebView {

    func loadRequestStr(_ string: String){
        let request = URLRequest(url: URL(string: string)!);
        loadRequest(request);
    }
    
    

}

//
//  NSString+Extension.swift
//  budejie
//
//  Created by 赵磊 on 2017/4/7.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit

extension String{
    
    var zl_fileSize : Int{
        get{
            let path = self;
            
            let manager = FileManager.default;
            // 文件夹大小
            var dicSize = 0;
            // 文件大小
            var fileSize = 0;
            
            //let attr1 = try?manager.attributesOfItem(atPath: cachePath + "/default/mp3");
            //let cathePath = cachePath + "/default";
            // 判断是否是文件
            let attr = try?manager.attributesOfItem(atPath: path) as NSDictionary ;
            if !manager.isDirectory(path){
                
                return Int((attr?.fileSize())!);
            }
            
            // 处理文件夹情况
            for subpath in manager.enumerator(atPath: path)! {
                let path = path + "/" + "\(subpath)";
                
                let attr = try?manager.attributesOfItem(atPath: path) as NSDictionary ;
                guard let a = attr?.fileSize() else {
                    continue;
                }
                if(!(attr?.fileType()?.contains("NSFileTypeRegular"))!){
                    dicSize += Int(a);
                }else{
                    fileSize += Int(a);
                }
            }
            
            //print(dicSize);
            //print(fileSize);
            
            return dicSize + fileSize;
        }
    }
    
    
    /// 计算单行文字的size
    ///
    /// - Parameter font: 字体
    /// - Returns: size
    func zl_size(_ font: UIFont) -> CGSize? {
        let text = self as NSString;
        let attributes = [NSFontAttributeName:font];
        
        //let a:NSString = "aaaa";
        return text.size(attributes: attributes );
        
        
        
    }
    
    
    /// 多行文本的宽高
    ///
    /// - Parameters:
    ///   - font: 字体
    ///   - width: 文字宽度
    /// - Returns: <#return value description#>
    func zl_size(_ font: UIFont , _ width : CGFloat) -> CGSize? {
        let text = self as NSString;
        let attributes = [NSFontAttributeName:font];
        let viewSize = CGSize(width: width, height: CGFloat(MAXFLOAT));
        
        //let a:NSString = "aaaa";
        return text.boundingRect(with: viewSize, options: [.usesLineFragmentOrigin], attributes: attributes, context: nil).size;
        
    }
    
    func zl_cgfloat() -> CGFloat{
        let text = self as NSString;
        
        return CGFloat(text.floatValue);
    }
    
    func zl_length() -> Int{
        
        
        return self.characters.count;
    }
    
    
    static func zl_fileSize(_ path: String){
        
        let manager = FileManager.default;
        // 文件夹大小
        var dicSize = 0;
        // 文件大小
        var fileSize = 0;
        
        //let attr1 = try?manager.attributesOfItem(atPath: cachePath + "/default/mp3");
        //let cathePath = cachePath + "/default";
        
        for subpath in manager.enumerator(atPath: path)! {
            let path = path + "/" + "\(subpath)";
            
            let attr = try?manager.attributesOfItem(atPath: path) as NSDictionary ;
            guard let a = attr?.fileSize() else {
                continue;
            }
            if(!(attr?.fileType()?.contains("NSFileTypeRegular"))!){
                dicSize += Int(a);
            }else{
                fileSize += Int(a);
            }
        }
        
        print(dicSize);
        print(fileSize);
    }
    
}

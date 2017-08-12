//
//  FileManager+Extension.swift
//  budejie
//
//  Created by 赵磊 on 2017/4/7.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit

extension FileManager{
    
    func isDirectory (_ path : String)-> Bool {
        let fileManager = FileManager.default
        var isDir : ObjCBool = false
        if fileManager.fileExists(atPath: path, isDirectory:&isDir) {
            if isDir.boolValue {
                // file exists and is a directory
                return true;
            } else {
                // file exists and is not a directory
                return false;
            }
        } else {
            // file does not exist
            return false;
        }
        
    }
    
}

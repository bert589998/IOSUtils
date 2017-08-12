//
//  NetworkUtils.swift
//  微博
//
//  Created by 赵磊 on 2017/1/9.
//  Copyright © 2017年 赵磊. All rights reserved.
//

import UIKit
import AFNetworking


/// 网络请求工具
class NetworkUtils: AFHTTPSessionManager {
    
    // 单例
    static let shared : NetworkUtils = {
        
        let instance = NetworkUtils();
        
        // 设置支持响应数据类型
        instance.responseSerializer.acceptableContentTypes?.insert("text/plain");
        
        return instance;
    }()
    

    /// get请求
    ///
    /// - Parameters:
    ///   - URLString: url
    ///   - parameters: 参数
    ///   - completion: 结果json和result
    func httpGet(URLString: String,parameters: [String:String]? , completion:@escaping (_ json: AnyObject? , _ isSuccess:Bool)->()){
        
        let success = { (task : URLSessionDataTask , json:Any?)->() in
            
            completion(json as AnyObject? , true);
        }
        
        let failure = { (task:URLSessionDataTask? , error:Error) in
            //处理403 token过期的情况
            if((task?.response as? HTTPURLResponse)?.statusCode == 403){
                print("token过期.")
                
                
            }
            
            print("网络请求错误 : \(error)")
            
            completion(nil,false)
            
        }
        
        get(URLString, parameters: parameters, progress: nil, success: success, failure: failure)
        
    }
    
    // httpPost
    func httpPost(URLString: String,parameters: [String:AnyObject]? , completion:@escaping (_ json: AnyObject? , _ isSuccess:Bool)->()){
        
        let success = { (task : URLSessionDataTask , json:Any?)->() in
            
            completion(json as AnyObject? , true);
        }
        
        let failure = { (task:URLSessionDataTask? , error:Error) in
            //处理403 token过期的情况
            if((task?.response as? HTTPURLResponse)?.statusCode == 403){
                print("token过期.")
            }
            
            print("网络请求错误 : \(error)")
            
            completion(nil,false)
            
        }
        
        post(URLString, parameters: parameters, progress: nil, success: success, failure: failure);
        
    }
    
    // 上传文件
    // 封装AFN的文件上传方法
    func httpTokenUpload(URLString: String,parameters: [String:AnyObject]? ,name: String,data:Data, completion:@escaping (_ json: AnyObject? , _ isSuccess:Bool)->()){
        
        post(URLString, parameters: parameters, constructingBodyWith: { (formData) in
            // 创建formData
            formData.appendPart(withFileData: data, name: name, fileName: "xxx", mimeType: "application/octet-stream")
            
        }, progress: nil, success: { (task, json) in
            completion(json as AnyObject, true);
            
        }, failure: { (task, error) in
            //处理403 token过期的情况
            if((task?.response as? HTTPURLResponse)?.statusCode == 403){
                print("token过期.")
                
            }
            
            print("网络请求错误 : \(error)")

        })
        
    }


}

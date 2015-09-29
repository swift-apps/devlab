//
//  ViewController.swift
//  TOTPExample
//
//  Created by Jeff Lee on 14/09/2015.
//  Copyright (c) 2015 Jeff Lee. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let str = "abcdef1235554646356465465413513516351654165116313g"
        let sha1Digest = str.hmacsha1("abcd")
        println("~~~~~"+sha1Digest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension String {
    
    func hmacsha1(key: String) -> String {
        
        let dataToDigest = self.dataUsingEncoding(NSUTF8StringEncoding)
        let secretKey = key.dataUsingEncoding(NSUTF8StringEncoding)
        
        let digestLength = Int(CC_SHA1_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLength)
        
        CCHmac(CCHmacAlgorithm(kCCHmacAlgSHA1), secretKey!.bytes, UInt(secretKey!.length), dataToDigest!.bytes, UInt(dataToDigest!.length), result)
        
        //return NSData(bytes: result, length: digestLength)
        let digest = stringFromResult(result, length: digestLength)
        result.dealloc(digestLength)
        
        return digest
        
    }
    private func stringFromResult(result: UnsafeMutablePointer<CUnsignedChar>, length: Int) -> String {
        var hash = NSMutableString()
        for i in 0..<length {
            hash.appendFormat("%02x", result[i])
        }
        return String(hash)
    }
}
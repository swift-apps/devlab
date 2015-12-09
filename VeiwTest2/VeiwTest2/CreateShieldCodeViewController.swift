//
//  CreateShieldCodeViewController.swift
//  VeiwTest2
//
//  Created by Jeff Lee on 5/12/2015.
//  Copyright © 2015 Jeff Lee. All rights reserved.
//

import Foundation
import UIKit

class CreateShieldCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        //let str = "abcdef1235554646356465465413513516351654165116313g"
        //let sha1Digest = str.hmacsha1("abcd")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension String {
    func hmacsha1(key: String) -> String {
        
        let dataToDigest = self.dataUsingEncoding(NSUTF8StringEncoding)
        let secretKey = key.dataUsingEncoding(NSUTF8StringEncoding)
        
        let digestLength = Int(CC_SHA1_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLength)
        
        CCHmac(CCHmacAlgorithm(kCCHmacAlgSHA1), secretKey!.bytes, Int(secretKey!.length), dataToDigest!.bytes, Int(dataToDigest!.length), result)
        
        //return NSData(bytes: result, length: digestLength)
        let digest = stringFromResult(result, length: digestLength)
        result.dealloc(digestLength)
        
        return digest
        
    }
    private func stringFromResult(result: UnsafeMutablePointer<CUnsignedChar>, length: Int) -> String {
        let hash = NSMutableString()
        for i in 0..<length {
            hash.appendFormat("%02x", result[i])
        }
        return String(hash)
    }
}
//
//  SDKRunner.swift
//  ProjectName
//
//  Created by Rhulani Ndhlovu on 2023/01/16.
//

import Foundation
import UIKit
import React
import Sybrin_iOS_Identity

@objc(SDKRunner)
class SDKRunner: NSObject {
  
  override init() {
    
  }
  
  let licenseKey: String = "R+hTAuG54bKFpUXInQmkzv7Ehj84knBdOPTmCsIk14zWXnR/ADOnLtAM+Jt/qKWZsbi1932SZz5HChZwV3UBzhQRElHPQJlUGw94LFY2OvjsvgqyLbU1OBcPhZk7c5VrXQnOOhnE/0clGDF4crWIf76kcoLO8db1mQ7XcVlMT78hox9AH689DpSObkEvBgU4+0Ec6pTOPdBLvscOktir0tkKH8PHskFyqwOGSaBWVRYMSRK+KkKDPLB2urK/0VOLItU7nXuY85z3eA+QS90jMqaXKGz3TNcuTB1gqf2sD9Rl9W81z56u2o0IU4Vs6vFNXdTfOeSnRjYW8BDg3WkHYzlSahT2io8WGi3alXkbsDW+R4i3i5fiJ1CCB/SvWo5tYiEAgQTD08FbSH5vWcR+3OIhJUGlNgnMs+L6euWc9GYT4OhKXH6jAPPLweSCFH2KhntKnYxRQl2PISOiymWCZZBLe8iLm15gwkBHsCiPZ/ie1S+BDqLbD4bxuxgfw6A/vnlj3AU5Nex7BbyCVaqqsQ=="
  
  @objc
  func scan(_ callback: @escaping RCTResponseSenderBlock) {
    //callback(["it works"])
    
    print("hello");
    
    DispatchQueue.main.async {
      let rooViewController = UIApplication.shared.delegate?.window??.rootViewController
      
      guard let rooViewController = rooViewController else {
        return
      }
      
      //self.runIdentitySDK(rooViewController, callback)
    }
  }
  
  func runIdentitySDK(_ viewController: UIViewController, _ callback: RCTResponseSenderBlock) {
    
//    let sybrinConfig = SybrinIdentityConfiguration(license: licenseKey)
//    sybrinConfig.language = .ENGLISH
//    SybrinIdentity.shared.configuration = sybrinConfig
//
//    SybrinIdentity.shared.scanPassport(on: viewController, for: .Philippines) {
//      (result, message) in
//
//      print("done launching")
//    }
  }
  
  @objc static func requiresMainQueueSetup() -> Bool { return true }
    @objc public func simpleMethod() { /* do something */ }
    @objc public func simpleMethodReturns(
      _ callback: RCTResponseSenderBlock
    ) {
      callback(["CustomMethods.simpleMethodReturns()"])
    }
    @objc public func simpleMethodWithParams(
      _ param: String,
      callback: RCTResponseSenderBlock
    ) {
      callback(["CustomMethods.simpleMethodWithParams('\(param)')"])
    }
    @objc public func throwError() throws {
      createError(message: "CustomMethods.throwError()")
    }
  
  @objc public func createError(message: String) {
    
  }
  
    @objc public func resolvePromise(
      _ resolve: RCTPromiseResolveBlock,
      rejecter reject: RCTPromiseRejectBlock
    ) -> Void {
      resolve("CustomMethods.resolvePromise()")
    }
    @objc public func rejectPromise(
      _ resolve: RCTPromiseResolveBlock,
      rejecter reject: RCTPromiseRejectBlock
    ) -> Void {
      reject("0", "CustomMethods.rejectPromise()", nil)
    }
}

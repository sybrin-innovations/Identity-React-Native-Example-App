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
  
  let licenseKey: String = ""
  
  @objc
  func scan(_ callback: @escaping RCTResponseSenderBlock) {
    
    DispatchQueue.main.async {
      let rooViewController = UIApplication.shared.delegate?.window??.rootViewController
      
      guard let rooViewController = rooViewController else {
        return
      }
      
      self.runIdentitySDK(rooViewController, callback)
    }
  }
  
  func runIdentitySDK(_ viewController: UIViewController, _ callback: RCTResponseSenderBlock) {
    
   let sybrinConfig = SybrinIdentityConfiguration(license: licenseKey)
   sybrinConfig.language = .ENGLISH
   SybrinIdentity.shared.configuration = sybrinConfig

   SybrinIdentity.shared.scanPassport(on: viewController, for: .Philippines) {
     (result, message) in

     print("done launching")
   }
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

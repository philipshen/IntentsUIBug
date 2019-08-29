//
//  ExampleIntentHandler.swift
//  IntentsUIBugIntents
//
//  Created by Phil Shen on 8/29/19.
//  Copyright © 2019 Philz Coffee. All rights reserved.
//

import Foundation

class ExampleIntentHandler: NSObject, ExampleIntentHandling {
    
    func confirm(intent: ExampleIntent, completion: @escaping (ExampleIntentResponse) -> Void) {
        completion(.init(code: .test, userActivity: nil))
    }
    
    func handle(intent: ExampleIntent, completion: @escaping (ExampleIntentResponse) -> Void) {
        completion(.init(code: .test, userActivity: nil))
    }
    
}

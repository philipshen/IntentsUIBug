//
//  IntentHandler.swift
//  IntentsUIBugIntents
//
//  Created by Phil Shen on 8/29/19.
//  Copyright © 2019 Philz Coffee. All rights reserved.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        return ExampleIntentHandler()
    }
    
}

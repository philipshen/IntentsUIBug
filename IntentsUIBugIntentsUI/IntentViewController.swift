//
//  IntentViewController.swift
//  IntentsUIBugIntentsUI
//
//  Created by Phil Shen on 8/29/19.
//  Copyright © 2019 Philz Coffee. All rights reserved.
//

import IntentsUI

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
  @IBOutlet var label: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
        
        switch interaction.intentHandlingStatus {
        case .success:
            self.label.text = "Success"
        case .failure:
            self.label.text = "Failure"
        default:
            self.label.text = "Other"
        }
        
        completion(true, parameters, self.desiredSize)
    }
    
    var desiredSize: CGSize {
        return CGSize(
            width: self.extensionContext!.hostedViewMaximumAllowedSize.width,
            height: 100
        )
    }
    
}

//
//  AlertViews.swift
//  additionChallenge
//
//  Created by Michael Metzger  on 5/7/18.
//  Copyright © 2018 Mike. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func standardAlert(title: String, message: (String)) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        alertView.addAction(UIAlertAction(title: "ok", style: .destructive, handler: nil))
        self.present(alertView, animated: true, completion: nil)
    }
    
    
}

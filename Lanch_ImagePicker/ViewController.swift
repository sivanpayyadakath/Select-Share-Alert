//
//  ViewController.swift
//  Lanch_ImagePicker
//
//  Created by Sivan.Payyadakath on 2019/04/24.
//  Copyright © 2019 Sivan.Payyadakath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var present: UIButton!
    @IBOutlet var alert: UIButton!
    @IBOutlet var share: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showphotos(sender: UIButton){
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }

    @IBAction func showalert(){
        let alert = UIAlertController()
        alert.title = "Alert"
        alert.message = "select an option"
        
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("approve clicked")
        }))
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("edit clicked")
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("delete clicked")
        }))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {(_) in
            print("dismiss clicked")
            self.dismiss(animated: true, completion: nil)   //dismiss the alert
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sharephotos(_ sender: Any){
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        controller.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
//        exclude some activity types from the list (optional)
//        activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
        
        self.present(controller, animated: true, completion: nil)
    }
    
}


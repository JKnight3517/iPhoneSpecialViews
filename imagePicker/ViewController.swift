//
//  ViewController.swift
//  imagePicker
//
//  Created by Justin Knight on 1/22/19.
//  Copyright © 2019 JustinKnight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func imagePicker(_ sender: Any) {
      
        let nextController = UIImagePickerController ()
        
        present(nextController, animated: true, completion: nil)
        
    }
    
    @IBAction func ActivityView(_ sender: Any) {
        // Note that to launch a UIActivityViewController, you have to provide an item that is shareable
        // In this case we'll create an empty image to be sent to the UIActivityViewController
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    

    @IBAction func AlertView(_ sender: Any) {
        // Note that Alert Views need at least a title or a message, you can't create an empty one
        // Also you need to make sure you add a way to exit the UIAlertController
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test"
        
        // To create a way to leave this UIAlertController programmitcally we'll create a Closure so that we can pass a method as an argument
        let okAction = UIAlertAction(title: "Done", style: UIAlertAction.Style.default) { action in self.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(okAction) // Here is where we pass in the closure
        self.present(controller, animated: true, completion: nil)
    }
    
}


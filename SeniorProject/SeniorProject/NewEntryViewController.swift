//
//  NewEntryViewController.swift
//  SeniorProject
//
//  Created by Harry Baird on 10/27/17.
//  Copyright © 2017 Carolyn Beranek. All rights reserved.
//

import UIKit

class NewEntryViewController: UIViewController {

    @IBOutlet weak var entryContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let color : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        entryContent.layer.borderWidth = 0.5
        entryContent.layer.borderColor = color.cgColor
        entryContent.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

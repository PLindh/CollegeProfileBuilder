//
//  DetailViewController.swift
//  19 College Profile
//
//  Created by Plindh on 2/1/17.
//  Copyright © 2017 Plindh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var numStudentsTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    var detailItem: Colleges? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let college = self.detailItem {
            if nameTextField != nil {
                nameTextField.text = college.name
                locationTextField.text = college.location
                numStudentsTextField.text = String(college.numStudents)
                imageView.image = UIImage(data: college.image)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSaveButtonTapped(_ sender: UIButton) {
        if let college = self.detailItem {
            college.name = nameTextField.text!
            college.location = locationTextField.text!
            college.numStudents = Int(numStudentsTextField.text!)!
            college.image = UIImagePNGRepresentation(imageView.image!)!
        }
    }

}


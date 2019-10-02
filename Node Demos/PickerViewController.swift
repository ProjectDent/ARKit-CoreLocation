//
//  PickerViewController.swift
//  Node Demos
//
//  Created by Hal Mueller on 9/29/19.
//  Copyright © 2019 Project Dent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showStackedNodes(_ sender: Any) {
        performSegue(withIdentifier: "stackOfNodes", sender: sender)
    }

    @IBAction func showFieldOfNodes(_ sender: Any) {
        performSegue(withIdentifier: "fieldOfNodes", sender: sender)
    }

    @IBAction func showFieldOflabels(_ sender: Any) {
        performSegue(withIdentifier: "fieldOfLabels", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ARCLViewController {
            if segue.identifier == "stackOfNodes" {
                destination.demonstration = .stackOfNodes
            }
            else if segue.identifier == "fieldOfNodes" {
                destination.demonstration = .fieldOfNodes
            }
            else if segue.identifier == "fieldOfLabels" {
                destination.demonstration = .fieldOfLabels
            }
        }
    }
}


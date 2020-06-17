//
//  SegmentedControlView.swift
//  Car Enthusiast
//
//  Created by Theofani on 17/03/20.
//  Copyright © 2020 Theofani. All rights reserved.
//

import UIKit

class SegmentedControlView: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    var simpleView1: UIView!
    var simpleView2: UIView!
    var simpleView3: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleView1 = SimpleVC1().view
        simpleView2 = SimpleVC2().view
        simpleView3 = SimpleVC3().view
        viewContainer.addSubview(simpleView1)
        viewContainer.addSubview(simpleView2)
        viewContainer.addSubview(simpleView3)
        // Do any additional setup after loading the view.
    }


    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubviewToFront(simpleView1)
            break
        case 1:
            viewContainer.bringSubviewToFront(simpleView2)
            break
        case 2:
            viewContainer.bringSubviewToFront(simpleView3)
            break
        default:
            break
        }
    }

}

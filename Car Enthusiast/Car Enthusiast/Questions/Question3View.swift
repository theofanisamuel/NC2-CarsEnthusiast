//
//  Question3View.swift
//  Car Enthusiast
//
//  Created by Theofani on 17/03/20.
//  Copyright © 2020 Theofani. All rights reserved.
//

import UIKit

class Question3View: UIViewController {

    @IBOutlet weak var buttonOptionA: UIButton!
    @IBOutlet weak var buttonOptionB: UIButton!
    
    var choiceArray = [String]()
    var currentChoice = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func choiceValue(_ sender: UIButton) {
        if buttonOptionA.isTouchInside{
            buttonOptionA.layer.borderWidth = 4.0
            choiceArray.append("looks")
        } else if buttonOptionB.isTouchInside{
            buttonOptionB.layer.borderWidth = 4.0
            choiceArray.append("performance")
        }
        print(choiceArray)
        currentChoice = choiceArray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Question4View{
            destination.choiceArray = currentChoice
        }
    }
    
    func setDefault(){
        buttonOptionA.layer.borderWidth = 0.0
        buttonOptionB.layer.borderWidth = 0.0
//        choiceArray.removeLast()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

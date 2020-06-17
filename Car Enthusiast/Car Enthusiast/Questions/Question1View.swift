//
//  Question1View.swift
//  Car Enthusiast
//
//  Created by Theofani on 17/03/20.
//  Copyright © 2020 Theofani. All rights reserved.
//

import UIKit

class Question1View: UIViewController {

    @IBOutlet weak var buttonOptionA: UIButton!
    @IBOutlet weak var buttonOptionB: UIButton!
    
    var choiceArray = [String]()
    var currentChoice = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefault()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func choiceValue(_ sender: UIButton) {
        if buttonOptionA.isTouchInside{
            setDefault()
            buttonOptionA.layer.borderWidth = 4.0
            choiceArray.append("city")
        } else if buttonOptionB.isTouchInside{
            setDefault()
            buttonOptionB.layer.borderWidth = 4.0
            choiceArray.append("adv")
        }
        print(choiceArray)
        currentChoice = choiceArray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Question2View{
            destination.choiceArray = currentChoice
        }
    }
    
    func setDefault(){
        buttonOptionA.layer.borderWidth = 0.0
        buttonOptionB.layer.borderWidth = 0.0
        choiceArray.removeAll()
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

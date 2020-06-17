//
//  Question4View.swift
//  Car Enthusiast
//
//  Created by Theofani on 17/03/20.
//  Copyright © 2020 Theofani. All rights reserved.
//

import UIKit

class Question4View: UIViewController {
    
    @IBOutlet weak var buttonShowCar: UIButton!
    
    @IBOutlet weak var buttonOptionA: UIButton!
    @IBOutlet weak var buttonOptionB: UIButton!
    
    var choiceArray = [String]()
    var currentChoice = [String]()
    
//    let hondaJazz = ["city", "comfort", "looks", "driver"]
//    let hondaAccord = ["city", "comfort", "looks", "passenger"]
//    let vwGolf = ["city", "comfort", "performance", "driver"]
//    let mercyC200 = ["city", "comfort", "performance", "passenger"]
//    let toyotaSupraGR = ["city", "comfort", "looks", "driver"]
//    let porschePanamera = ["city", "comfort", "looks", "driver"]
//    let hondaCivicR = ["city", "comfort", "looks", "driver"]
//    let mercyCLA45 = ["city", "comfort", "looks", "driver"]
//
//    let mazdaCX5 = ["city", "comfort", "looks", "driver"]
//    let hondaCRV = ["city", "comfort", "looks", "driver"]
//    let vwTiguan = ["city", "comfort", "looks", "driver"]
//    let mercedesGLS = ["city", "comfort", "looks", "driver"]
//    let porscheMacan = ["city", "comfort", "looks", "driver"]
//    let rangeRoverEvoque = ["city", "comfort", "looks", "driver"]
//    let bmwX5 = ["city", "comfort", "looks", "driver"]
//    let mercyGLC43 = ["city", "comfort", "looks", "driver"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            buttonShowCar.isHidden = true
            // Do any additional setup after loading the view.
        }
        
        @IBAction func choiceValue(_ sender: UIButton) {
            buttonShowCar.isHidden = false
            if buttonOptionA.isTouchInside{
                buttonOptionA.layer.borderWidth = 4.0
                choiceArray.append("driver")
            } else if buttonOptionB.isTouchInside{
                buttonOptionB.layer.borderWidth = 4.0
                choiceArray.append("passenger")
            }
            print(choiceArray)
            currentChoice = choiceArray
        }
        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if let destination = segue.destination as? Question4View{
//                destination.choiceArray = currentChoice
//            }
//        }
    
    @IBAction func buttonShowAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toCarShowSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CarShowView{
            destination.choiceResultArray = currentChoice
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

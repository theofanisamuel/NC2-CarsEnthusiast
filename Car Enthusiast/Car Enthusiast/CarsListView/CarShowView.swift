//
//  CarImageView.swift
//  Car Enthusiast
//
//  Created by Theofani on 17/03/20.
//  Copyright © 2020 Theofani. All rights reserved.
//

import UIKit
import AVFoundation

class CarShowView: UIViewController {

    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carBrandLabel: UILabel!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var buttonDismiss: UIButton!
    
    var carImageArray: [UIImage] = [#imageLiteral(resourceName: "honda-jazz-5"), #imageLiteral(resourceName: "honda-accord-1"), #imageLiteral(resourceName: "vw-golf-1"), #imageLiteral(resourceName: "mercy-c200-5"), #imageLiteral(resourceName: "toyota-supra-2"), #imageLiteral(resourceName: "porsche-panamera-3"), #imageLiteral(resourceName: "honda-civic-1"), #imageLiteral(resourceName: "mercy-amg-cla45-1")]
    var carBrandArray: [String] = ["Honda", "Honda", "Volkswagen", "Mercedes-Benz", "Toyota", "Porsche", "Honda", "Mercy"]
    var carNameArray: [String] = ["Jazz RS", "Accord", "Golf GTI", "C 250", "Supra GR", "Panamera", "Civic Type R", "AMG CLA 45"]
    
    var choiceResultArray = [String]()
    
    var currentImage: UIImage?
    var currentBrandName = ""
    var currentCarName = ""
    
    //Car type arrays
     let hondaJazz = ["city", "comfort", "looks", "driver"]
     let hondaAccord = ["city", "comfort", "looks", "passenger"]
     let vwGolf = ["city", "comfort", "performance", "driver"]
     let mercyC200 = ["city", "comfort", "performance", "passenger"]
     let toyotaSupraGR = ["city", "speed", "looks", "driver"]
     let porschePanamera = ["city", "speed", "looks", "passenger"]
     let hondaCivicR = ["city", "speed", "performance", "driver"]
     let mercyCLA45 = ["city", "speed", "performance", "passenger"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carNameLabel.sizeToFit()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        if choiceResultArray == hondaJazz{
            carImageView.image = carImageArray[0]
            carBrandLabel.text = carBrandArray[0]
            carNameLabel.text = carNameArray[0]
        } else if choiceResultArray == hondaAccord{
            carImageView.image = carImageArray[1]
            carBrandLabel.text = carBrandArray[1]
            carNameLabel.text = carNameArray[1]
        } else if choiceResultArray == vwGolf{
            carImageView.image = carImageArray[2]
            carBrandLabel.text = carBrandArray[2]
            carNameLabel.text = carNameArray[2]
        } else if choiceResultArray == mercyC200{
            carImageView.image = carImageArray[3]
            carBrandLabel.text = carBrandArray[3]
            carNameLabel.text = carNameArray[3]
        } else if choiceResultArray == toyotaSupraGR{
            carImageView.image = carImageArray[4]
            carBrandLabel.text = carBrandArray[4]
            carNameLabel.text = carNameArray[4]
        } else if choiceResultArray == porschePanamera{
            carImageView.image = carImageArray[5]
            carBrandLabel.text = carBrandArray[5]
            carNameLabel.text = carNameArray[5]
        } else if choiceResultArray == hondaCivicR{
            carImageView.image = carImageArray[6]
            carBrandLabel.text = carBrandArray[6]
            carNameLabel.text = carNameArray[6]
        } else if choiceResultArray == mercyCLA45{
            carImageView.image = carImageArray[7]
            carBrandLabel.text = carBrandArray[7]
            carNameLabel.text = carNameArray[7]
        }
    }

    
    @IBAction func dismissAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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

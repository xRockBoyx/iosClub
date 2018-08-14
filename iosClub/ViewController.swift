//
//  ViewController.swift
//  iosClub
//
//  Created by 黃威愷 on 2018/8/14.
//  Copyright © 2018年 黃威愷. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plate: UITextField!
    @IBOutlet weak var consume: UILabel!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var goods: UILabel!
    @IBOutlet weak var passergers: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var cars = [Car(brand: "Honda", plate: "AP-123"),
                      Car(brand: "Toyota", plate: "GG-3B0"),
                      Car(brand: "NISSAN", plate: "UU-356"),
                      Car(brand: "Benz", plate: "QQ-345"),
                      Car(brand: "Lexus", plate: "HH-678")]
    
    var choose = 0
    override func viewDidLoad() {
        slider.minimumValue = 0.0
        slider.maximumValue = Float(cars.count - 1)
        super.viewDidLoad()
        refresh()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refresh (){
        type.text = "汽車"
        brand.text = cars[choose].getBrand()
        plate.text = cars[choose].getPlate()
        consume.text = String(cars[choose].getConsume())
        passergers.text = String(cars[choose].getPassengers())
        stock.text = String(cars[choose].getStock())
        miles.text = String(cars[choose].getMiles())
        goods.text = String(cars[choose].getGoods())
    }
    
    @IBAction func changePlate(_ sender: Any) {
        cars[choose].setPlate(plate: plate.text!)
        refresh()
    }
    @IBAction func addPassenger(_ sender: Any) {
        cars[choose].addPassenger()
        refresh()
    }
    @IBAction func removePassenger(_ sender: Any) {
        cars[choose].removePassengers()
        refresh()
    }
    
    @IBAction func addGood(_ sender: Any) {
        cars[choose].addGoods()
        refresh()
    }
    
    @IBAction func removeGood(_ sender: Any) {
        cars[choose].removeGoods()
        refresh()
    }
    @IBAction func drive(_ sender: Any) {
        cars[choose].drive()
        refresh()
    }
    @IBAction func refuel(_ sender: Any) {
        cars[choose].refuel()
        refresh()
    }
    
    @IBAction func selected(_ sender: Any) {
        slider.value = Float(Int(slider.value))
        choose = Int(slider.value)
        refresh()
    }
}


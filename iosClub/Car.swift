//
//  Car.swift
//  iosClub
//
//  Created by 黃威愷 on 2018/8/14.
//  Copyright © 2018年 黃威愷. All rights reserved.
//

import Foundation

class Car{
    private var brand:String?
    private var plate:String?
    private var consume: Double?
    private var capacity: Double?
    private var stock:Double?
    private var miles: Double?
    private var passengers: Int?
    private var goods: Int?
    
    public init( brand: String, plate: String){
        self.brand = brand
        self.plate = plate
        self.consume = 1
         self.stock = 1
        self.capacity = stock
        self.miles = 0
        self.passengers = 0
        self.goods = 0
    }
    
    public func setPlate(plate:String){
        self.plate = plate
    }
    public func drive(){
        self.miles = miles! + (stock! * consume!)
        self.stock = 0
    }
    public func refuel(){
        self.stock = capacity
    }
    public func addPassenger(){
        self.passengers? += 1
    }
    public func removePassengers(){
        if self.passengers! > 0{
            self.passengers? -= 1
        }
    }
    public func addGoods(){
        self.goods? += 1
    }
    public func removeGoods(){
        if self.goods! > 0{
            self.goods? -= 1
        }
    }
    
    public func getBrand()-> String{
        return self.brand!
    }
    public func getPlate()-> String{
        return self.plate!
    }
    public func getConsume()->Double{
        return self.consume!
    }
    public func getCapacity()->Double{
        return self.capacity!
    }
    public func getStock()->Double{
        return self.stock!
    }
    public func getMiles()->Double{
        return self.miles!
    }
    public func getPassengers()->Int{
        return self.passengers!
    }
    public func getGoods()->Int{
        return self.goods!
    }
}

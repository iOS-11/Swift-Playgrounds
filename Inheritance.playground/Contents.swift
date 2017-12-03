//: Playground - noun: a place where people can play

import UIKit

class House {
	
	var windows: Int?
	var bedrooms: Int?
	var bathrooms: Int?
	var isHouseLocked: Bool?
	
	init() {
		
	}
	
	func lockDoor() {
		isHouseLocked = true
	}

	func unlockDoor() {
		isHouseLocked = false
	}
}

class Mansion: House {
	
	override init() {
		super.init()
		windows = 15
		bedrooms = 12
		bathrooms = 10
	}
	
	override func lockDoor() {
		print("You have successfully locked the door!")
		print(isHouseLocked)
	}
	
	override func unlockDoor() {
		print("You have successfully unlocked the door!")
		print(isHouseLocked)
	}
	
}

var home = Mansion()
home.lockDoor()
home.unlockDoor()

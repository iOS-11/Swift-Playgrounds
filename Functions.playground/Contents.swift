//: Functions

import UIKit

func calculateArea(length: Int, width: Int) -> Int {
	return length * width
}

calculateArea(length: 12, width: 3)
calculateArea(length: 43, width: 8)

// Balance Checker
var accountBalance = 100.00

func purchase(name: String, balance: inout Double, itemPrice: Double) {
	if itemPrice <= balance {
		balance = balance - itemPrice
		print("Successfully purchased \(name). Currently $\(balance - itemPrice) left in your account.")
	}
	
	print("Sorry. You don't have enough money!")
}
accountBalance
purchase(name: "skateboard", balance: &accountBalance, itemPrice: 20.00)
purchase(name: "light bulb", balance: &accountBalance, itemPrice: 10.00)


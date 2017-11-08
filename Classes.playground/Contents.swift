//: Playground - noun: a place where people can play

import UIKit

class Bank {
    var firstName: String
    var lastName: String
    var currentBalance: Double
    
    init(firstName: String, lastName: String, currentBalance: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.currentBalance = currentBalance
    }
    
    func deposit(amount: Double) {
        currentBalance = currentBalance + amount
    }
    
    func withdraw(amount: Double) {
        if amount <= currentBalance {
            currentBalance = currentBalance - amount
        } else {
            print("You don't have enough money!")
        }
    }
}

let philBank = Bank(firstName: "Phil", lastName: "Jhonson", currentBalance: 300.0)
print(philBank.currentBalance)

// Deposit Money ✅
philBank.deposit(amount: 50.0)
print(philBank.currentBalance)

// Withdraw Money ✅
philBank.withdraw(amount: 185.0)
print(philBank.currentBalance)

print("Phil currently has $\(philBank.currentBalance) left in his bank account")

// Check if withdraw amount is greater than balance ✅
philBank.withdraw(amount: 200.0)
print(philBank.currentBalance)


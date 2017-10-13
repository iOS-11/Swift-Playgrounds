//: Playground - noun: a place where people can play

import UIKit

func checkWeather(isRaining: Bool) -> String {
	if isRaining {
		return "It's pouring out there, bring an umbrella!"
	} else {
		return "It's nice and sunny out there, go for a swim!"
	}
}

checkWeather(isRaining: true)
checkWeather(isRaining: false)

var balance = 200
var shoes = 150

if shoes < balance {
	balance = balance - shoes
	print("You got $\(balance) left in your account")
}

var isTimerRunning = false

func beginRunning() -> Bool {
	return true
}

if isTimerRunning != beginRunning() {
	isTimerRunning = beginRunning()
}

print(isTimerRunning)


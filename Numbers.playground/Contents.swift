//: Playground - noun: a place where people can play

import UIKit

// Integers
var age = 25
var weight = 170
var siblings: Int = 3

var height = (weight - 20) / 3 // 50 inches

var length = 50
var width = 25
var area = length * width // 1250
var perimeter = 2 * (length + width) // 150

// Doubles
var capacity = 32.12
var photosStorageTaken = 5.31
var appsStorageTaken: Double = 4.28
var filesStorageTaken: Double = 12.46

var totalStorage = photosStorageTaken + appsStorageTaken + filesStorageTaken
var storageLeft = capacity - (totalStorage)

var message = "You have \(storageLeft)GB remaining on your iPhone."

// Remainders
var remainder = 32 % 7
var num = 16

if num % 2 == 0 {
	print("This number is divisible by two")
}



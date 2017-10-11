//: Playground - noun: a place where people can play

import UIKit

var message = "Hello world!"
var name = "Jonathon"
var favoriteSport = "Basketball"

var greeting = "\(message) My name is \(name) and my favorite sport is \(favoriteSport)"

var favoriteBook = "charlie and the chocolate factory"
favoriteBook = favoriteBook.capitalized

var phrase = "fat orange cat!"
phrase = phrase.uppercased()

var censor = "He plays like ****"
if censor.contains("*") {
	censor.replacingOccurrences(of: "*", with: "")
}

var toMakeLowercase = "SWIFT IS THE FREAKIN' BEST PROGRAMMING LANGUAGE EVER!!!"
toMakeLowercase = toMakeLowercase.lowercased()

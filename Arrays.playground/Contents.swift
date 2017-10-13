//: Arrays

import UIKit

var favoriteSports = [String]()

favoriteSports.append("Basketball") // 0
favoriteSports.append("Tennis") // 1
favoriteSports.append("Hockey") //2
favoriteSports.append("Soccer") // 3
print(favoriteSports.count)

favoriteSports.remove(at: 1)
print(favoriteSports) // Basketball(0), Hockey(1), Soccer(2)

favoriteSports[2] = "Football"
print(favoriteSports)

var players = ["Max Oliver", "Jim Jonathon", "Timmy Carkil", "Lug Wenathon", "Hickey Gil"]
var isSpotOpenOnTeam = false

func checkPlayersCapacity(team: [String]) -> Bool {
	if team.count <= 5 {
		return true
	}
	return false
}

isSpotOpenOnTeam = checkPlayersCapacity(team: players)
print(isSpotOpenOnTeam)

players.append("Michael Honaranch")
isSpotOpenOnTeam = checkPlayersCapacity(team: players)
print(isSpotOpenOnTeam)

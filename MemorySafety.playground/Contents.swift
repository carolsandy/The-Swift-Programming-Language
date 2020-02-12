
func oneMore(than number: Int) -> Int {
    return number + 1
}

var myNumber = 1
myNumber = oneMore(than: myNumber)
print(myNumber)

var stepSize = 1
func increment(_ number: inout Int) {
    number += stepSize
}
var copyOfStepSize = stepSize
increment(&copyOfStepSize)
stepSize = copyOfStepSize

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}
var playerOneScore = 42
var playerTwoScore = 30
balance(&playerOneScore, &playerTwoScore)
// balance(&playerOneScore, &playerOneScore) -> produces a conflict because it tries to perform two write accesses to the same location in memory at the same time

struct Player {
    var name: String
    var health: Int
    var energy: Int
    
    static let maxHealth = 10
    mutating func restoreHealth() {
        health = Player.maxHealth
    }
}

extension Player {
    mutating func shareHealth(with teammate: inout Player) {
        balance(&teammate.health, &health)
    }
}

var oscar = Player(name: "Oscar", health: 10, energy: 10)
var maria = Player(name: "Maria", health: 5, energy: 10)
oscar.shareHealth(with: &maria)
print(oscar, maria)

// oscar.shareHealth(with: &oscar) the two write accesses refer to the same memory and they overlap, producing a conflict

var playerInformation = (health: 10, energy: 10)
// balance(&playerInformation.health, &playerInformation.energy) -> Conflicting access to properties of player information
var holly = Player(name: "Holly", health: 10, energy: 10)
// balance(&holly.health, &holly.energy) -> Error when overlapping write accesses to the properties of a structure that's stored in a global variable

func someFunction() {
    var oscar = Player(name: "Oscar", health: 10, energy: 10)
    balance(&oscar.health, &oscar.energy)
}
someFunction()

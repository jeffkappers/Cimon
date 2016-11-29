import Foundation

class Cimon {
    
    var turnNumber = 0
    var playersTurn = false
    var cimonsTurn = true
    var cimonsSequence = [String]()
    var playersSequenceThisTurn = [String]()
    var isStillGoing = true
    
    func updatePlayersSequenceThisTurn(input : String) {
        if playersSequenceThisTurn.count < cimonsSequence.count {
            playersSequenceThisTurn.append(input)
            print(playersSequenceThisTurn)
        }
        else {
            isGameOver(playersSequenceThisTurn, cimonsSequence)
            playersSequenceThisTurn.removeAll()
            turnNumber += 1
            updateCimonsSequence()
            
        }
    }
    
    func updateCimonsSequence() {
        let colorIndex = arc4random_uniform(4)
        if colorIndex == 0 {
            cimonsSequence.append("Green")
        }
        else if colorIndex == 1 {
            cimonsSequence.append("Red")
        }
        else if colorIndex == 2 {
            cimonsSequence.append("Yellow")
        }
        else {
            cimonsSequence.append("Blue")
        }
        print("Cimon's current sequence is")
        for colors in cimonsSequence {
            print(colors)
        }
        cimonsTurn = false
        playersTurn = true
    }
    
    func isGameOver(_ : Array<String>, _ : Array<String>) {
        if playersSequenceThisTurn == cimonsSequence {
            print("Game is not over")
        }
        else {
            print("Game is over")
        }
    }
}

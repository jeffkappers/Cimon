import Foundation

class Cimon {
    
    
    fileprivate var isGameOver = false
    fileprivate var isUsersTurn = true
    
    func protocol72 () -> String{
        var gameOn = true
        var playersTurn = false
        while gameOn == true {
            var thisGamesSequence = generateASequence()
            while playersTurn == false {
                thisGamesSequence = modifyASequence(currentSequence: thisGamesSequence)
                for element in thisGamesSequence{ //testing to see if thisGameSequence is generated properly
                    print(element)
                }
                playersTurn = true
            }
            while playersTurn == true {
                var usersSequenceThisRound = generateASequence()
                usersSequenceThisRound = receivePlayersInput(buttonPressed: nil, sequenceA: usersSequenceThisRound, sequenceB: thisGamesSequence)
                if (usersSequenceThisRound.count == thisGamesSequence.count) {
                    playersTurn = false
                    let isGameStillOn = passOrFail(sequenceA: usersSequenceThisRound , sequenceB: thisGamesSequence)
                    if (isGameStillOn == false) {
                        gameOn = false
                    }
                }
            }
        }
            return "You suck"
    }
    
    func receivePlayersInput(buttonPressed: Int?, sequenceA: Array<Int>?, sequenceB: Array<Int>?) -> Array<Int> {
        var sequenceC = sequenceA!
        sequenceC.append(buttonPressed!)
        for element in sequenceA! { //testing to see if button presses are properly appended to useresSequenceThisRound
            print(element)
        }
        return sequenceC
    }

     private func generateASequence () -> Array<Int> {
        var rand = 0
        var currentSequence = [Int]()
        rand = Int(arc4random_uniform(3))
        currentSequence.append(rand)
        return currentSequence
    }
    
    private func modifyASequence (currentSequence : Array<Int>) -> Array<Int> {
        var rand = 0
        rand = Int(arc4random_uniform(3))
        var myCurrentSequence = currentSequence
        myCurrentSequence.append(rand)
        return myCurrentSequence
    }
    
    private func passOrFail(sequenceA: Array<Int>, sequenceB: Array<Int>) -> Bool {
        for index in 0...sequenceA.count {
            if (sequenceA[index] != sequenceB[index]){
                return false
            }
        }
        return true
    }
}

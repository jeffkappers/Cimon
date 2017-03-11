import Foundation

struct CimonGame {
    
    var gameOver = false
    var playerFinishedThisSequence = true
    
    var cimonsSequence = [Int]()
    var playersSequence = [Int]()
    
    mutating func updateCimonsSequence () {
        let random = Int(arc4random_uniform(4))
        cimonsSequence.append(random)
        print("cimon's sequence was updated to \(cimonsSequence)")
    }
    
    mutating func updatePlayersSequence (playersInput: Int) {
        playersSequence.append(playersInput)
        compareSequencesForMostRecentInput()
        if playersSequence.count == cimonsSequence.count {
            updateCimonsSequence()
            playersSequence.removeAll()
            playerFinishedThisSequence = true;
        }
        
        else {
            playerFinishedThisSequence = false;
        }
        print("the player's sequence was updated to \(playersSequence)")
    }
    
    mutating func compareSequencesForMostRecentInput(){
        let indexOfMostRecent = playersSequence.index(of: playersSequence.last!)
        if playersSequence.last != cimonsSequence[indexOfMostRecent!] {
            print("\(playersSequence.last!)")
            print("\(cimonsSequence[indexOfMostRecent!])")
            gameOver = true;
        }
    }
    
    func statusReport () {
        print("the player's sequence count is \(playersSequence.count)")
        print("the player's sequence is \(playersSequence)")
        print("cimon's sequence count is \(cimonsSequence.count)")
        print("cimon's sequence is \(cimonsSequence)")
        //print("the most recent element's index is \(mostRecentElementIndex)")
    }
}

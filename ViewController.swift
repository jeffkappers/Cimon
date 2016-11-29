import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        cimonGame()
        aCimon.updateCimonsSequence()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func greenButtonPress(_ sender: AnyObject) {
        print("The player press the Green button")
        aCimon.updatePlayersSequenceThisTurn(input: "Green")
    }
    @IBAction func redButtonPress(_ sender: AnyObject) {
        print("The player press the Red button")
        aCimon.updatePlayersSequenceThisTurn(input: "Red")
    }
    @IBAction func yellowButtonPress(_ sender: AnyObject) {
        print("The player press the Yellow button")
        aCimon.updatePlayersSequenceThisTurn(input: "Yellow")
    }
    @IBAction func blueButtonPress(_ sender: AnyObject) {
        print("The player press the Blue button")
        aCimon.updatePlayersSequenceThisTurn(input: "Blue")
    }
        
    var aCimon = Cimon()
    
    func cimonGame() {
        while aCimon.isStillGoing == true {
            print("Penis")
        }
    }
}

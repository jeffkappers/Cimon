import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        aCimon.updateCimonsSequence()
        cimonGame()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        aCimon.updatePlayersSequenceThisTurn(input: sender.currentTitle!)
    }
    
        
    var aCimon = Cimon()
    //aCimon.updatePlayersSequenceThisTurn(input: "Blue")
    func cimonGame() {
        //while aCimon.isStillGoing == true {
           // print("Penis")
        //}
    }
}

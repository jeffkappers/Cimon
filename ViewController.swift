import UIKit

class ViewController: UIViewController {
    
    @IBAction func greenButtonPress(sender: UIButton) {
        print("green")
        let buttonValue = 0
        myCimon.receivePlayersInput(buttonPressed: buttonValue, sequenceA: nil, sequenceB: nil)
    }
    @IBAction func redButtonPress(sender: UIButton) {
        print("red")
        let buttonValue = 1
        myCimon.receivePlayersInput(buttonPressed: buttonValue, sequenceA: nil, sequenceB: nil)
    }
    @IBAction func yellowButtonPress(sender: UIButton) {
        print("yellow")
        let buttonValue = 2
        myCimon.receivePlayersInput(buttonPressed: buttonValue, sequenceA: nil, sequenceB: nil)
    }
    @IBAction func blueButtonPress(sender: UIButton) {
        print("blue")
        let buttonValue = 3
        myCimon.receivePlayersInput(buttonPressed: buttonValue, sequenceA: nil, sequenceB: nil)
    }
    
    private var myCimon = Cimon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

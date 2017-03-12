

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        aCimonGame.updateCimonsSequence()
        shouldDisplayCimonsSequence()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func buttonPress(_ sender: UIButton) {
        var buttonValue: Int? = nil;
        if let buttonTitle = sender.currentTitle {
            switch buttonTitle {
            case "Green":
                buttonValue = 0
                let originalButtonColor = greenButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.greenButton.backgroundColor = UIColor.white
                        self.greenButton.backgroundColor = originalButtonColor},
                    completion: { (value: Bool) in
                        self.isGameOver(buttonValue: buttonValue!)
                })
            case "Red":
                buttonValue = 1
                let originalButtonColor = redButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.redButton.backgroundColor = UIColor.white
                        self.redButton.backgroundColor = originalButtonColor},
                    completion: { (value: Bool) in
                        self.isGameOver(buttonValue: buttonValue!)
                })
            case "Yellow":
                buttonValue = 2
                let originalButtonColor = yellowButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.yellowButton.backgroundColor = UIColor.white
                        self.yellowButton.backgroundColor = originalButtonColor},
                    completion: { (value: Bool) in
                        self.isGameOver(buttonValue: buttonValue!)
                })
            case "Blue":
                buttonValue = 3
                let originalButtonColor = blueButton.backgroundColor
                blueButton.backgroundColor = UIColor.white
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.blueButton.backgroundColor = UIColor.white
                        self.blueButton.backgroundColor = originalButtonColor},
                    completion: { (value: Bool) in
                        self.isGameOver(buttonValue: buttonValue!)
                })
            default:
                buttonValue = 0
            }

        }
        
        
    }
    
    private var aCimonGame = CimonGame()
    var cimonsIndex = 0;
    
    func isGameOver(buttonValue: Int) {
        aCimonGame.updatePlayersSequence(playersInput: buttonValue)
        if aCimonGame.gameOver == true {
            print("you lost")
        }
        else {
            shouldDisplayCimonsSequence()
        }
    }
    
    func shouldDisplayCimonsSequence(){
        if aCimonGame.playerFinishedThisSequence == true {
            displayCimonsSequence()
        }
    }
    
    func displayCimonsSequence() {
        if cimonsIndex <= aCimonGame.cimonsSequence.count-1 {
            switch aCimonGame.cimonsSequence[cimonsIndex]{
            case 0:
                cimonsIndex += 1
                let originalButtonColor = self.greenButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.greenButton.backgroundColor = UIColor.white
                        self.greenButton.backgroundColor = originalButtonColor},
                    completion: {
                        (value: Bool) in
                        self.displayCimonsSequence()
                })
            case 1:
                cimonsIndex += 1
                let originalButtonColor = self.redButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.redButton.backgroundColor = UIColor.white
                        self.redButton.backgroundColor = originalButtonColor},
                    completion: {
                        (value: Bool) in
                        self.displayCimonsSequence()
                })
            case 2:
                cimonsIndex += 1
                let originalButtonColor = self.yellowButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.yellowButton.backgroundColor = UIColor.white
                        self.yellowButton.backgroundColor = originalButtonColor},
                    completion: {
                        (value: Bool) in
                        self.displayCimonsSequence()
                })
            case 3:
                cimonsIndex += 1
                let originalButtonColor = self.blueButton.backgroundColor
                UIButton.animate(
                    withDuration: 1,
                    animations: {
                        self.blueButton.backgroundColor = UIColor.white
                        self.blueButton.backgroundColor = originalButtonColor},
                    completion: {
                        (value: Bool) in
                        self.displayCimonsSequence()
                })
            default:
                print("how'd i get here?")
            }
        }
        else {
            self.cimonsIndex = 0
            }
    }
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
}


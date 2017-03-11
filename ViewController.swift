

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
        //let buttonTitle = sender.currentTitle
        //print("\(buttonTitle) was pressed")
        var buttonValue: Int? = nil;
        if let buttonTitle = sender.currentTitle {
            switch buttonTitle {
            case "Green":
                buttonValue = 0
                let originalButtonColor = greenButton.backgroundColor
                UIButton.animate(withDuration: 1, animations: {
                    self.greenButton.backgroundColor = UIColor.white
                    self.greenButton.backgroundColor = originalButtonColor
                })
            case "Red":
                buttonValue = 1
                let originalButtonColor = redButton.backgroundColor
                UIButton.animate(withDuration: 1, animations: {
                    self.redButton.backgroundColor = UIColor.white
                    self.redButton.backgroundColor = originalButtonColor
                })
            case "Yellow":
                buttonValue = 2
                let originalButtonColor = yellowButton.backgroundColor
                UIButton.animate(withDuration: 1, animations: {
                    self.yellowButton.backgroundColor = UIColor.white
                    self.yellowButton.backgroundColor = originalButtonColor
                })
            case "Blue":
                buttonValue = 3
                let originalButtonColor = blueButton.backgroundColor
                blueButton.backgroundColor = UIColor.white
                UIButton.animate(withDuration: 1, animations: {
                    self.blueButton.backgroundColor = UIColor.white
                    self.blueButton.backgroundColor = originalButtonColor
                })
            default:
                buttonValue = 0
            }

        }
        aCimonGame.updatePlayersSequence(playersInput: buttonValue!)
        if aCimonGame.gameOver == true {
            print("you lost")
        }
        shouldDisplayCimonsSequence()
    }
    
    private var aCimonGame = CimonGame()
    var index = 0;
    
    
    func shouldDisplayCimonsSequence(){
        if aCimonGame.playerFinishedThisSequence == true {
            print("Cimon's sequence count is \(aCimonGame.cimonsSequence.count)")
            while index <= aCimonGame.cimonsSequence.count-1 {
                print("index's value is \(index)")
                switch aCimonGame.cimonsSequence[index]{
                case 0:
                    let originalButtonColor = self.greenButton.backgroundColor
                    UIButton.animate(withDuration: 2, delay: 1,
                    animations: {
                        self.greenButton.backgroundColor = UIColor.white
                        self.greenButton.backgroundColor = originalButtonColor
                    },
                    completion: {
                            (value: Bool) in
                    })
                case 1:
                    let originalButtonColor = self.redButton.backgroundColor
                    UIButton.animate(withDuration: 2,
                    animations: {
                        self.redButton.backgroundColor = UIColor.white
                        self.redButton.backgroundColor = originalButtonColor
                    })
                case 2:
                    let originalButtonColor = self.yellowButton.backgroundColor
                    UIButton.animate(withDuration: 2,
                    animations: {
                        self.yellowButton.backgroundColor = UIColor.white
                        self.yellowButton.backgroundColor = originalButtonColor
                    })
                case 3:
                    let originalButtonColor = self.blueButton.backgroundColor
                    UIButton.animate(withDuration: 2,
                    animations: {
                        self.blueButton.backgroundColor = UIColor.white
                        self.blueButton.backgroundColor = originalButtonColor
                    })
                default:
                    print("how'd i get here?")
                }
                index += 1
                
            }
        }

    }
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    
}


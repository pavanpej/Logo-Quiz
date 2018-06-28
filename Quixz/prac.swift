
import UIKit

class prac: UIInputViewController {
    @IBOutlet var bu2: UIButton!
    @IBOutlet var bu1: UIButton!
    @IBOutlet var bu3: UIButton!
    @IBOutlet var bu4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    var ch:Int = 0

    @IBAction func bu1(_ sender: UIButton) {
        bu1.backgroundColor = UIColor.green
        bu2.isEnabled = false
        bu3.isEnabled = false
        bu4.isEnabled = false
        bu1.isEnabled = false
    }


    @IBAction func bu2(_ sender: UIButton) {
        bu1.backgroundColor = UIColor.green
        bu1.isEnabled = false
        bu2.backgroundColor = UIColor.red
        bu3.isEnabled = false
        bu4.isEnabled = false
    }
    @IBAction func bu3(_ sender: UIButton) {
        bu1.backgroundColor = UIColor.green
        bu3.backgroundColor = UIColor.red
        bu2.isEnabled = false
        bu4.isEnabled = false
        bu1.isEnabled = false
    }

    @IBAction func bu4(_ sender: UIButton) {
        bu1.backgroundColor = UIColor.green
        bu4.backgroundColor = UIColor.red
        bu2.isEnabled = false
        bu3.isEnabled = false
        bu1.isEnabled = false
    }
}

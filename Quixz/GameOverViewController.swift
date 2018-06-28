//
//  GameOverViewController.swift
//  Quixz
//
//  Created by Krishnamurthy Ramakantha on 07/10/17.
//  Copyright © 2017 sjbit. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    let appdelegate = UIApplication.shared.delegate as? AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

        
        let score1 = appdelegate?.score
        scoreLabel.text = String(describing: score1!)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func playAgain(_ sender: UIButton) {
        appdelegate?.score = 0
        self.performSegue(withIdentifier: "toStart", sender: self)
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

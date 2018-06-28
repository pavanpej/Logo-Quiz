//
//  Temp2ViewController.swift
//  Quixz
//
//  Created by Krishnamurthy Ramakantha on 07/10/17.
//  Copyright © 2017 sjbit. All rights reserved.
//

import UIKit

class Temp2ViewController: UIViewController {
    
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var image1: UIImageView!
    
    
    var score1 = 0
    
    var ch = 0
    var correctans: Int = 0
    var questions = [0,1,2,3]
    let appdelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        Button1.layer.cornerRadius = 12
        Button2.layer.cornerRadius = 12
        Button3.layer.cornerRadius = 12
        Button4.layer.cornerRadius = 12
        
        Button1.layer.borderWidth = 2
        Button2.layer.borderWidth = 2
        Button3.layer.borderWidth = 2
        Button4.layer.borderWidth = 2
        
        
        score1 = appdelegate!.score
        quiz()
    }
    
    
    @IBAction func Button1Act(_ sender: UIButton) {
        Button1.layer.borderWidth = 3
        if (correctans == 1)
        {
            score1 += 2
            Button1.layer.borderColor = UIColor.green.cgColor
            
        }
        else{
            score1 -= 1
            Button1.layer.borderColor = UIColor.red.cgColor
        }
        
        Button2.isEnabled = false
        Button3.isEnabled = false
        Button4.isEnabled = false
        Button1.isEnabled = false
    }
    
    
    @IBAction func Button2Act(_ sender: UIButton) {
        Button2.layer.borderWidth = 3
        if (correctans == 2) {
            score1 += 2
            Button2.layer.borderColor = UIColor.green.cgColor
        }
        else{
            score1 -= 1
            Button2.layer.borderColor = UIColor.red.cgColor
        }
        
        Button1.isEnabled = false
        Button3.isEnabled = false
        Button4.isEnabled = false
        Button2.isEnabled = false
    }
    
    @IBAction func Button3Act(_ sender: UIButton) {
        Button3.layer.borderWidth = 3
        if (correctans == 3) {
            score1 += 2
            Button3.layer.borderColor = UIColor.green.cgColor
        }
        else{
            score1 -= 1
            Button3.layer.borderColor = UIColor.red.cgColor
        }
        
        Button2.isEnabled = false
        Button1.isEnabled = false
        Button4.isEnabled = false
        Button3.isEnabled = false
    }
    @IBAction func Button4Act(_ sender: UIButton) {
        Button4.layer.borderWidth = 3
        if (correctans == 4) {
            score1 += 2
            Button4.layer.borderColor = UIColor.green.cgColor
        }
        else{
            score1 -= 1
            Button4.layer.borderColor = UIColor.red.cgColor
        }
        Button2.isEnabled = false
        Button3.isEnabled = false
        Button1.isEnabled = false
        Button4.isEnabled = false
    }
    

    
    @IBAction func quitButton2(_ sender: UIButton) {
         appdelegate?.score = score1
         self.performSegue(withIdentifier: "toGO2", sender: self)
    }
    
    @IBAction func next(_ sender: UIButton) {
        if(questions.count > 0){
            
            Button1.isEnabled = true
            Button2.isEnabled = true
            Button3.isEnabled = true
            Button4.isEnabled = true
            
            Button1.backgroundColor = UIColor.clear
            Button2.backgroundColor = UIColor.clear
            Button3.backgroundColor = UIColor.clear
            Button4.backgroundColor = UIColor.clear
            
            Button1.layer.borderColor = UIColor.clear.cgColor
            Button2.layer.borderColor = UIColor.clear.cgColor
            Button3.layer.borderColor = UIColor.clear.cgColor
            Button4.layer.borderColor = UIColor.clear.cgColor
            
            quiz()
            
        }
        else{
            appdelegate?.score = score1
            self.performSegue(withIdentifier: "toGO2", sender: self)
            print(score1)
            
        }

        
    }
    
    func quiz()
    {
        Button1.layer.borderColor = UIColor.white.cgColor
        Button2.layer.borderColor = UIColor.white.cgColor
        Button3.layer.borderColor = UIColor.white.cgColor
        Button4.layer.borderColor = UIColor.white.cgColor
        
        
        ch = Int(arc4random_uniform(UInt32(questions.count)))
        let rnum = questions[ch]
        switch rnum {
        case 0:
            image1.image = UIImage(named: "lockheed.png")
            Button1.setTitle("Aeropostale", for: .normal)
            Button2.setTitle("Axl Rose", for: .normal)
            Button3.setTitle("Northrop", for: .normal)
            Button4.setTitle("Lockheed Martin", for: .normal)
            correctans = 4
            break
        case 1:
            image1.image = UIImage(named: "atari.png")
            Button1.setTitle("Atari", for: .normal)
            Button2.setTitle("Sega", for: .normal)
            Button3.setTitle("Nintendo", for: .normal)
            Button4.setTitle("Playstation", for: .normal)
            correctans = 1
            break
        case 2:
            image1.image = UIImage(named: "Maybach.png")
            Button1.setTitle("Mercedes-Benz", for: .normal)
            Button2.setTitle("Maybach", for: .normal)
            Button3.setTitle("Maxwell", for: .normal)
            Button4.setTitle("Mercury", for: .normal)
            correctans = 2
            break
        case 3:
            image1.image = UIImage(named: "deutsche.png")
            Button1.setTitle("Carrefour", for: .normal)
            Button2.setTitle("Slash", for: .normal)
            Button3.setTitle("Deutsche Bank", for: .normal)
            Button4.setTitle("Target", for: .normal)
            correctans = 3
            break
        default:
            break
        }
        questions.remove(at: ch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

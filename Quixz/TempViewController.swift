//
//  TempViewController.swift
//  Quiz
//
//  Created by CSE_5B on 16/09/17.
//  Copyright © 2017 SJBIT. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {
    
    var score1 = 0

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var image1: UIImageView!
    
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
    
    @IBAction func quitButton1(_ sender: UIButton) {
        appdelegate?.score = score1
        self.performSegue(withIdentifier: "toGO1", sender: self)
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
            
        quiz()
        //print(score1)
        }
        else{
            appdelegate?.score = score1
            self.performSegue(withIdentifier: "toGO1", sender: self)
            print(score1)
            
        }
        
    }
    
    //Questions
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
            image1.image = UIImage(named: "napster.png")
            Button1.setTitle("Shazam", for: .normal)
            Button2.setTitle("Napster", for: .normal)
            Button3.setTitle("Spotify", for: .normal)
            Button4.setTitle("SoundHound", for: .normal)
            correctans = 2
            break
        case 1:
            image1.image = UIImage(named: "Volkswagen.png")
            Button1.setTitle("Van", for: .normal)
            Button2.setTitle("Chrysler", for: .normal)
            Button3.setTitle("Vauxhall", for: .normal)
            Button4.setTitle("Volkswagen", for: .normal)
            correctans = 4
            break
        case 2:
            image1.image = UIImage(named: "cisco.png")
            Button1.setTitle("SoundCloud", for: .normal)
            Button2.setTitle("Beats by Dre", for: .normal)
            Button3.setTitle("IBM", for: .normal)
            Button4.setTitle("Cisco", for: .normal)
            correctans = 4
            break
        case 3:
            image1.image = UIImage(named: "xerox.jpg")
            Button1.setTitle("Xamarin", for: .normal)
            Button2.setTitle("Xbox", for: .normal)
            Button3.setTitle("Xerox", for: .normal)
            Button4.setTitle("Platypus", for: .normal)
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

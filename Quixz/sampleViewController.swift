
import UIKit

class sampleViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var names = ["Novice","Intermediate","Expert"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.navigationController?.isNavigationBarHidden = true

    }
    
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    @IBAction func button1(_ sender: UIButton) {
        backgroundView.frame = CGRect(x: 0, y: 535, width: self.backgroundView.frame.width, height: self.backgroundView.frame.height)
       
        if startButton.isHidden{
            startButton.isHidden = false
        }
        else
        {
            startButton.isHidden = true
        }
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
            case 0:
                self.performSegue(withIdentifier: "toM1", sender: self)
            case 1:
                self.performSegue(withIdentifier: "toM2", sender: self)
            case 2:
                self.performSegue(withIdentifier: "toM3", sender: self)
            default:
                break
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid")
        cell?.textLabel?.text = names[indexPath.row]
        //cell?.backgroundColor = UIColor(colorLiteralRed: 20/255, green: 0/255, blue: 50/255, alpha: 0.8)
        cell?.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cell?.layer.borderColor = UIColor.red.cgColor
        cell?.layer.borderWidth = 0.3
        cell?.textLabel?.textAlignment = .center
        cell?.textLabel?.textColor = #colorLiteral(red: 0.8641746044, green: 0.2277331054, blue: 0.2359535098, alpha: 1)
        
        cell?.layer.cornerRadius = 4
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}

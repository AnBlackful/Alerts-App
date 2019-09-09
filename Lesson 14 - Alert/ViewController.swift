import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - start Alert
    @IBAction func mainButtonPressed(_ sender: UIButton) {
        let alertCtrl = UIAlertController(title: "Hello World", message: "World Hello", preferredStyle: .alert)
        let OKButton = UIAlertAction(title: "OK", style: .default) { (_) in
            print("Nice try")
            self.present(alertCtrl, animated: true)
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let printButton = UIAlertAction(title: "Not OK", style: .destructive) { (_) in
            print("Try again")
            self.present(alertCtrl, animated: true)
            
        }
        
        alertCtrl.addAction(OKButton)
        alertCtrl.addAction(printButton)
        alertCtrl.addAction(cancelButton)
        self.present(alertCtrl, animated: true)
    }
    //MARK: - End Alert
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        self.calling()
        
    }
    
    func calling(){
        let number = "+375256137664"
        if let url = URL(string: "sms://\(number)") { //if let url = URL(string: "tel://\(number)")
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    //MARK: - Тернарный оператор
    func checkFunc(){
        let check = true
        let a = check==true ? 5:2
        
    }
    
}


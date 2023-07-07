//
//  LoginViewController.swift
//  RE-FIT
//
//  Created by jaegu park on 7/07/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var IDTextField: UITextField!
    @IBOutlet weak var PWTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var EyeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ShowPassword(_ sender: Any) {
        PWTextField.isSecureTextEntry.toggle()
        EyeButton.isSelected.toggle()
        let eyeImage = EyeButton.isSelected ? "Eye_Icon2" : "Eye_Icon"
        EyeButton.setImage(UIImage(named: eyeImage), for: .normal)
        EyeButton.tintColor = .clear
    }
    
    @IBAction func JoinButton(_ sender: Any) {
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "JoinViewController") as? JoinViewController else {return}
        
        self.navigationController?.pushViewController(rvc, animated: true)
    }
}

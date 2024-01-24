//
//  ViewController.swift
//  study
//
//  Created by Vignesh Mac air on 10/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func actionNextButton(_ sender: Any) {
        setUpNav()
    }
    func setUpNav() {
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            vc.setUpCompletion { status in
                self.labelTitle.text = status == true ? "yes" : "No"
            }
            self.present(vc, animated: true)
        }
    }

}


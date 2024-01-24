//
//  SecondViewController.swift
//  study
//
//  Created by Vignesh Mac air on 21/01/24.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    var completionHandler:((Bool) -> ())?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func setUpCompletion(completion:@escaping (Bool) -> ()) {
        self.completionHandler = completion
    }
    
    @IBAction func actionYesButton(_ sender: Any) {
        guard let completionHandler = self.completionHandler else {return}
        completionHandler(true)
    }
    
    @IBAction func actionNoButton(_ sender: Any) {
        guard let completionHandler = self.completionHandler else {return}
        completionHandler(false)
    }
    
    
}

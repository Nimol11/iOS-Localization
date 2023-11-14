//
//  SecondViewController.swift
//  Localization
//
//  Created by Nimol on 14/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "button", comment: ""), for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

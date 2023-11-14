//
//  ViewController.swift
//  Localization
//
//  Created by Nimol on 14/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = Localization.language(str: "hello")
        btn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "button", comment: ""), for: .normal)
    }

    @IBAction func changLanguage(_ sender: Any) {
        let currentLanguage = Locale.current.language.languageCode!.identifier
        print(currentLanguage)
        sheetAlert()
    }
    
    private func sheetAlert() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "English 🇬🇧 ", style: .default, handler: { action in
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! SecondViewController
            let appDlg = UIApplication.shared.delegate as? AppDelegate
            appDlg?.window?.rootViewController = vc
        }))
        alert.addAction(UIAlertAction(title: "Khmer 🇰🇭", style: .default, handler: {  action in
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "km")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! SecondViewController
            let appDlg = UIApplication.shared.delegate as? AppDelegate
            appDlg?.window?.rootViewController = vc
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true )
    }

}

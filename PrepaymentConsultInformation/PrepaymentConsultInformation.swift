//
//  PrepaymentConsultInformation.swift
//  PrepaymentConsultInformation
//
//  Created by techlabs on 2022/07/25.
//

import UIKit

class PrepaymentConsultInformation: UIViewController {
    
    @IBOutlet weak var themeSwitch: UISwitch!
    static var isThemeSwitchOn: Bool? = false
    static var theme: Int = 0
    
    @IBOutlet var theme_main_text: [UILabel]!
    @IBOutlet var theme_sub_text: [UILabel]!

    @IBOutlet var theme_main_background: [UIView]!
    @IBOutlet var theme_sub_background: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTheme()
    }

    @IBAction func onChangeThemeSwitch(_ sender: Any) {
        if themeSwitch.isOn {
            Themes.switchTo(theme: .black)
        } else {
            Themes.switchTo(theme: .white)
        }
        
//        ViewController.isThemeSwitchOn = themeSwitch.isOn
//        UserDefaults.standard.set(themeSwitch.isOn, forKey: "theme")
    }
    
    
//    func setState() {
//        if Themes.getCurrentTheme() == .black{
//
//        }else{
//
//        }
//
//
//        let userDefaults = UserDefaults.standard
//        if let theme = userDefaults.value(forKey: "theme") {
//            themeSwitch.isOn = theme as! Bool
//        } else {
//            themeSwitch.isOn = false
//        }
//    }
    
    func setTheme() {
        for mainView in theme_main_background {
            mainView.theme_backgroundColor = Themes.mainBgCP
        }
        
        for subviewItem in theme_sub_background {
            subviewItem.theme_backgroundColor = Themes.subBgCP
        }
        
        for mainText in theme_main_text {
            mainText.theme_textColor = Themes.mainTextCP
        }
        
        for subText in theme_sub_text {
            subText.theme_textColor = Themes.subTextCP
        }
    }
    
}

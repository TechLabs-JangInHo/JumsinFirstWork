//
//  CounsellingPrepaymentDiscount.swift
//  TestProj
//
//  Created by 김성태 on 2022/07/26.
//

import UIKit


class CounsellingPrepaymentDiscount:UIViewController{
 
    @IBOutlet var theme_main_text: [UILabel]!
    @IBOutlet var theme_main_background: [UIView]!
    @IBOutlet var theme_sub_background: [UIView]!
    
    @IBOutlet weak var themeSwitch: UISwitch!
    
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
    }
    
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
    }
}

//
//  Themes.swift
//  PrepaymentConsultInformation
//
//  Created by techlabs on 2022/07/25.
//

import SwiftTheme

private let lastThemeIndexKey = "lastedThemeIndex"
private let changThemeCountKey = "changThemeCountKey"
private let defaults = UserDefaults.standard

enum Theme: Int {
    case white = 0
    case black = 1
}

class Themes: NSObject {
    /**
        2022 컬러셋
     */
    static let mainTextCP:ThemeColorPicker = ["#000000", "#FFFFFF"]
    static let subTextCP:ThemeColorPicker = ["#bcc3d3", "#4c5260"] // 3 used 총운-날짜, 시간대별-시간, 바이오-날짜
    static let pointTextCP:ThemeColorPicker = ["#000000", pointColor]
    static let pointLineCP:ThemeColorPicker = [pointColor, "#00000000"]
    static let pointColor = "#fff854"
    static let mainBgCP: ThemeColorPicker = ["#F4F7FE", "#171819"]
    static let subBgCP: ThemeColorPicker = ["#ffffff", "#232527"]
    static let borderCP:ThemeCGColorPicker = ["#F2F5F8", "#00000000"]
    
    static let moreTextCP:ThemeColorPicker = ["#000000", "#4e5360"]
    static let reportMenuBgCP:ThemeColorPicker = ["#FFFFFF", "#0d0e0f"] // 5 used 바이오상세, 추천소식버튼, 날씨 버튼텍스트, 꿈해몽
    static let lineBgCP:ThemeColorPicker = ["#E4E9F4", "#373b46"] // 5 used 총운 프로그레스, 바이오상세 프로그레스, 추천소식 라인, 운세보고서 라인, 꿈해몽
    
    static let counselorProfileBg:ThemeColorPicker = ["#F8F8F8","#2b2e31"]
    static let black_white:ThemeColorPicker = ["#1F2024","#F4F7FE"]
    static let pointText:ThemeColorPicker = [pointColor,"#171819"]
    static let white_black:ThemeColorPicker = ["#FFFFFF","#171819"]
    static let counselorCouponBg:ThemeColorPicker = ["#FDFDFE","#26282A"]
    
    /**
        기존 컬러셋
     */
    static let tabBgColor :ThemeColorPicker = ["#ffffff", "#1e1f26"]
    static let tabSelectColor :ThemeColorPicker = ["#000000", "#ffffff"]
    static let tabUnSelectColor :ThemeColorPicker = ["#d9d9d9", "#3e4350"]
    
    
    
    static let backgroundColor: ThemeColorPicker = ["#f4f5f9", "#21232a"]
    static let bgBoxColor :ThemeColorPicker = ["#ffffff", "#2c3039"]
    static let bg2BoxColor :ThemeColorPicker = ["#ffffff", "#596174"]
    static let bgBoxSelectBlackColor :ThemeColorPicker = ["#000000", "#596174"]
    static let bgTimeColor: ThemeColorPicker = ["#ffffff", "#21232a"]
    static let bgTime2Color: ThemeColorPicker = ["#ebebeb", "#21232a"]
    static let bgInfoColor :ThemeColorPicker = ["#000000", "#2c3039"]
    static let bgInfoBoxColor :ThemeColorPicker = ["#ffffff", "#596174"]
    static let tarotboxBgColor :ThemeColorPicker = ["#3e3f40", "#596174"]
    
    
    static let bgImageColor :ThemeColorPicker = ["#e2e8ef", "#1e1e1e"]
    static let bgCookieTimeBarColor :ThemeColorPicker = ["#ffffff", "#596174"]
    
    static let imageTintWhiteColor :ThemeColorPicker = ["#ffffff", "#000000"]
    static let imageTintBlackColor :ThemeColorPicker = ["#000000", "#ffffff"]
    
    static let imageTintBigNumberColor :ThemeColorPicker = ["#858f9c", "#596174"]
    static let imageTintBigNumberColor_ex :ThemeColorPicker = ["#ffffff", "#596174"]
    
    static let imageTintTodayBigNumberColor :ThemeColorPicker = ["#000000", "#596174"]
    static let imageTintArrow1Color :ThemeColorPicker = ["#000000", "#596174"]
    static let imageTintArrow2Color :ThemeColorPicker = ["#000000", "#2c3039"]
    static let imageTintArrow3Color :ThemeColorPicker = ["#a7b1bd", "#ffffff"]
    static let imageTintSettingArrowColor :ThemeColorPicker = ["#000000", "#ffffff"]
    static let imageTintDimColor :ThemeColorPicker = ["#000000", "#4d4f54"]
    
    static let default1Color: ThemeColorPicker = ["#000000", "#ffffff"] // 홈기준 검정글씨
    static let default2Color: ThemeColorPicker = ["#a7b1bd", "#596174"] // 홈기준 흐린글씨
    static let default2_1Color: ThemeColorPicker = ["#a7b1bd", "#ffffff"] //
    static let default2_2Color: ThemeColorPicker = ["#a7b1bd", "#798492"] //
    static let default3Color: ThemeColorPicker = ["#ffffff", "#21232a"] //
    static let default4Color: ThemeColorPicker = ["#000000", "#596174"]
    static let default5Color: ThemeColorPicker = ["#000000", "#798492"]
    static let default6Color: ThemeColorPicker = ["#454545", "#a7b1bd"]
    static let topDateColor: ThemeColorPicker = ["#626262", "#798492"]
    static let DreamCellTextColor: ThemeColorPicker = ["#000000", "#21232a"] //
    
    // ...
    static let taortTagColor: ThemeColorPicker = ["#000000", "#7a86a1"]
    static let taortTagBorderColor: ThemeCGColorPicker = ["#000000", "#7a86a1"]
    
    
    static let PlaceholderColor: ThemeColorPicker = ["#bbbbbb", "#596174"]
    
    static let lineColor: ThemeColorPicker = ["#ebebeb", "#2C3039"]
    static let line2Color: ThemeColorPicker = ["#ebebeb", "#ffffff"]
    static let line3Color: ThemeColorPicker = ["#ebebeb", "#21232a"]
    static let line4Color: ThemeColorPicker = ["#ebebeb", "#393f4a"]
    static let analyzelineColor: ThemeColorPicker = ["#d8d8d8", "#2c3039"]
    static let blacklineColor: ThemeColorPicker = ["#000000", "#ffffff"]
    static let titlelineColor: ThemeColorPicker = ["#f4f5f9", "#414855"]
    static let TablineColor: ThemeColorPicker = ["#ebebeb", "#21232a"]
    static let MenulineColor: ThemeColorPicker = ["#000000", "#596174"]
    static let SkelColor: ThemeColorPicker = ["#DADBDE", "#2A2B2E"]
    
    static let gapLineColor: ThemeColorPicker = ["#cfd5dc", "#a7b1bd"]
    
    static let timeDateColor: ThemeColorPicker = ["#818c9a", "#798492"]
    static let timeDimColor: ThemeColorPicker = ["#000000", "#4d4f54"]
    static let textDimColor: ThemeColorPicker = ["#cccccc", "#4d4f54"]
    
    static let typeColor: ThemeColorPicker = ["#a7b1bd", "#7A86A1"]
    
    static let moreColor: ThemeColorPicker = ["#a7b1bd", "#596174"]
    
    static let replayTextColor: ThemeColorPicker = ["#ffffff", "#21232a"]
    
    static let setTabTextColor: ThemeColorPicker = ["#ffffff", "#21232a"]
    static let setTabBgColor: ThemeColorPicker = ["#a7b1bd", "#596174"]
    
    static let planCellDimBgColor: ThemeColorPicker = ["#000000", "#596174"]
    static let userInfoColor: ThemeColorPicker = ["#000000", "#798492"] //
    static let todayluckBgColor: ThemeColorPicker = ["#454545", "#596174"] //
    
    static let todayCelebText1Color: ThemeColorPicker = ["#000000", "#596174"] //
    static let todayCelebText2Color: ThemeColorPicker = ["#000000", "#a7b1bd"] //
    static let facetextColor: ThemeColorPicker = ["#a7b1bd", "#ffffff"]

    
    static let weatherDotColor: ThemeColorPicker = ["#ABB5C0", "#ABB5C0"] //
    
    static let btnSelectTitleColor: ThemeColorPicker = ["#ffffff", "#000000"]
    static let btnNonSelectTitleColor: ThemeColorPicker = ["#000000", "#ffffff"]
//    static let btnbackgroundColor: ThemeColorPicker = [color_main, color_main]
    
    static let tabSelectTitleColor: ThemeColorPicker = ["#000000", "#ffffff"]
    static let tabNonSelectTitleColor: ThemeColorPicker = ["#bbbbbb", "#a7b1bd"]
    static let tabBorderColor: ThemeCGColorPicker = ["#000000", "#ffffff"]
    static let tabNonBorderColor: ThemeCGColorPicker = ["#bbbbbb", "#a7b1bd"]
    
//    static let mainTextColor: ThemeColorPicker = [color_main, color_main]
//    static let settingTextColor: ThemeColorPicker = [color_settingColor, color_settingColor]
//    static let btnColor: ThemeColorPicker = [color_main, color_main]
    static let btnNorColor: ThemeColorPicker = ["#a7b1bd", "#596174"]
    static let tabSelectLineColor: ThemeColorPicker = ["#808183", "#808183"]
    static let tvTabSelectLineColor: ThemeColorPicker = ["#000000", "#ffffff"]
    
    static let defaultBorderColor: ThemeCGColorPicker = ["#000000", "#ffffff"]
    static let textboxBorderColor: ThemeCGColorPicker = ["#000000", "#596174"]
    static let periodBorderColor: ThemeCGColorPicker = ["#d4d4d4", "#596174"]
    static let circularBorderColor: ThemeCGColorPicker = ["#ebebeb", "#21232a"]
    static let popboxBorderColor: ThemeCGColorPicker = ["#eeeeee", "#21232a"]
    static let default2BorderColor: ThemeCGColorPicker = ["#a7b1bd", "#596174"]
    
    static let hashTag1Color: ThemeColorPicker = ["#c2c2c2", "#a7b1bd"]
    static let hashTag1_1Color: ThemeColorPicker = ["#c2c2c2", "#7A86A1"]
    static let hashTagBorder1Color: ThemeCGColorPicker = ["#c2c2c2", "#a7b1bd"]
    static let hashTagBorder1_1Color: ThemeCGColorPicker = ["#c2c2c2", "#7A86A1"]
    static let hashTag2Color: ThemeColorPicker = ["#a7b1bd", "#a7b1bd"]
    static let hashTagBorder2Color: ThemeCGColorPicker = ["#c2c2c2", "#a7b1bd"]
    static let hashTagbgColor: ThemeColorPicker = ["#ffffff", "#000000"]
    static let hashTagProfileColor: ThemeColorPicker = ["#757575", "#a7b1bd"]
    static let hashTagProfileBorder1Color: ThemeCGColorPicker = ["#757575", "#a7b1bd"]
    static let hashTagBorder3Color: ThemeCGColorPicker = ["#000000", "#ffffff"]
    
    static let hashTagBg_detailColor: ThemeColorPicker = ["#f4f5f9", "#596174"]
    static let hashTag_detailColor: ThemeColorPicker = ["#3E3F40", "#ffffff"]
    
    static let boxSelectColor: ThemeColorPicker = ["#000000", "#ffffff"]
    static let boxNonSelectColor: ThemeColorPicker = ["#ffffff", "#000000"]
    
    static let stateSelectColor: ThemeColorPicker = ["#000000", "#596174"]
    static let stateNonSelectColor: ThemeColorPicker = ["#dedede", "#353945"]
    
    
    static let dotCGColor: ThemeCGColorPicker = ["#000000", "#ffffff"]
    
    
    
    static let nativeBgColor: ThemeColorPicker = ["#e6e6e6", "#a7b1bd"]
    static let nativeBorderColor: ThemeCGColorPicker = ["#e6e6e6", "#596174"]
    
    
    // 89, 97, 116 - 596174 // 161 - a7b1bd
    // - ars
    static let arsText1Color: ThemeColorPicker = ["#000000", "#a7b1bd"]
    static let arsText2Color: ThemeColorPicker = ["#596174", "#a7b1bd"]
    static let arsText3Color: ThemeColorPicker = ["#a7b1bd", "#596174"]
    
    static let arsLine1Color: ThemeColorPicker = ["#a7b1bd", "#2c3039"]
    static let arsLine2Color: ThemeColorPicker = ["#eeeeee", "#5b6172"]
    
    static let arsText4Color: ThemeColorPicker = ["#596174", "#798492"]
    static let arsText5Color: ThemeColorPicker = ["#596174", "#ffffff"]
    static let arsText6Color: ThemeColorPicker = ["#596174", "#7a86a1"]
    static let arsText7Color: ThemeColorPicker = ["#596174", "#cccccc"]
    static let arsText8Color: ThemeColorPicker = ["#141212", "#ffffff"]
    static let arsText9Color: ThemeColorPicker = ["#ffffff", "#a7b1bd"]
    static let arsText10Color: ThemeColorPicker = ["#a0a0a0", "#777f8d"]
    static let arsText11Color: ThemeColorPicker = ["#1f2024", "#1f2024"]
    
    
    static let arsBoxColor1: ThemeColorPicker = ["#c2c5cb", "#383c46"]
    static let arsBoxColor2: ThemeColorPicker = ["#edeff2", "#434855"]
    static let arsBoxColor3: ThemeColorPicker = ["#000000", "#596174"]
    static let arsTextLineColor :ThemeColorPicker = ["#ffea00", "#0091ff"]
    
    static let arsColor1 :ThemeColorPicker = ["#e5e7ec", "#2c3039"]
    
    static let arsBoxColor :ThemeColorPicker = ["#ffffff", "#474d5c"]
    
    
    static let arsbutbgColor: ThemeColorPicker = ["#ffffff", "#596174"]
    static let arsbutbgColor2: ThemeColorPicker = ["#ffffff", "#2c3039"]
    static let arsbutbgColor3: ThemeColorPicker = ["#d6d6d6", "#596174"] // 부재중
    static let arsbutbgColor4: ThemeColorPicker = ["#ffffff", "#21232a"]
    static let arsBorderColor: ThemeCGColorPicker = ["#000000", "#a7b1bd"]
    static let arsBorderColor2: ThemeCGColorPicker = ["#000000", "#242731"]
    
    static let arsBorderColor_sel: ThemeCGColorPicker = ["#000000", "#ffffff"]
    static let arsBorderColor_box: ThemeCGColorPicker = ["#000000", "#798492"]
    static let arsBorderColor_box2: ThemeCGColorPicker = ["#000000", "#2c3039"]
    
//    // - 타입
//    static var timeDisColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return (theme.rawValue == Theme.white.rawValue ? UIColor.init(hexString: "#a7b1bd", alpha: 1.0) : UIColor.init(hexString: "#d1d1d1", alpha: 1.0))!
//        }
//    }
//
//    // - 그래프 ! -> Theme.black.rawValue 반대 수정할것
//    static var raderChartWebColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return (theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#bbbbbb", alpha: 0.6) : UIColor.init(hexString: "#d1d1d1", alpha: 0.6))!
//        }
//    }
//    static var raderChartInnerWebColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return (theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#bbbbbb", alpha: 1.0) : UIColor.init(hexString: "#d1d1d1", alpha: 1.0))!
//        }
//    }
//    static var raderTextColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#bbbbbb", alpha: 1.0)! : .black
//        }
//    }
//    static var raderFillColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return (theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#fff854", alpha: 0.8) : UIColor.init(hexString: "#fff854", alpha: 0.8))!
//        }
//    }
//    static var raderInnerFillColor :UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return (theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#fff854", alpha: 1.0) : UIColor.init(hexString: "#fff854", alpha: 1.0))!
//        }
//    }
//    static var lineGraphColor: UIColor {
//        get {
//            let theme = self.getCurrentTheme()
//            return theme.rawValue == Theme.black.rawValue ? UIColor.init(hexString: "#bbbbbb", alpha: 1.0)! : .black
//        }
//    }
    
    /**
     * @brief   테마변경
     */
    static func switchTo(theme:Theme) {
        ThemeManager.setTheme(index: theme.rawValue)
        self.saveLastTheme(theme: theme)
    }
    
    /**
     * @brief   현재 테마
     */
    static func getCurrentTheme() -> Theme{
        let current = Theme(rawValue: defaults.integer(forKey: lastThemeIndexKey))!
        return current
    }
    
    /**
     * @brief   세이브 복구
     */
    static func restoreLastTheme() {
        switchTo(theme: self.getCurrentTheme())
    }
    static func saveLastTheme(theme:Theme) {
        defaults.set(theme.rawValue, forKey: lastThemeIndexKey)
    }
    static func saveChangeThemeCount() {
        let count = defaults.integer(forKey: changThemeCountKey)
        defaults.set(count + 1, forKey: changThemeCountKey)
    }
    static func getChangeThemeCount() -> Int {
        let count = defaults.integer(forKey: changThemeCountKey)
        return count
    }
    
    /**
     * @brief
     */
    static func picker(image :String) ->ThemeImagePicker? {
        let theme = image + "_black"
        let picker :ThemeImagePicker = [image, theme]
        return picker
    }
    
    static func setStatusBarStyle() {
        UIApplication.shared.theme_setStatusBarStyle([.default, .lightContent], animated: true)
    }
}

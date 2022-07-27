//
//  ViewController.swift
//  PrepaymentConsultInformation
//
//  Created by techlabs on 2022/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func navigatePrepaymentConsultTapped() {
        let viewController = PrepaymentConsultInformation(nibName: "PrepaymentConsultInformation", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func navigateThreeMinute(_ sender: Any) {
        let viewController = CounselingThreeMinuteFree(nibName: "CounselingThreeMinuteFree", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func navigatePrepaymentDisCount(_ sender: Any) {
        let viewController = CounsellingPrepaymentDiscount(nibName: "CounsellingPrepaymentDiscount", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}


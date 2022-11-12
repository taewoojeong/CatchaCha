//
//  PayViewController.swift
//  CatchCha
//
//  Created by juhee on 2022/11/13.
//

import UIKit

class PayViewController: UIViewController {

    @IBOutlet weak var payView: UIView!
    @IBOutlet weak var payView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(named: "background")
        
        payView.layer.cornerRadius = 10
        payView2.layer.cornerRadius = 10
    }


}

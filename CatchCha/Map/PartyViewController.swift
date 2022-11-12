//
//  PartyViewController.swift
//  CatchCha
//
//  Created by juhee on 2022/11/12.
//

import UIKit

class PartyViewController: UIViewController {

    @IBOutlet weak var btnCatch: UIButton!
    @IBOutlet weak var viewCatcher: UIView!
    @IBOutlet weak var viewCatcher2: UIView!
    @IBOutlet weak var viewCatcher3: UIView!
    @IBOutlet weak var viewCatcher4: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    var people: Int?
    @IBOutlet weak var peopleLabel: UILabel!
    var minute: Int?
    var addminute: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        if minute == 0 {
            addminute = 1
        } else if minute == 0 {
            addminute = 3
        } else if minute == 0 {
            addminute = 5
        } else {
            addminute = 10
        }
        let date = Date()
        let date1 = Calendar.current.date(byAdding: .minute, value: addminute, to: date)
        print(date1!)
        var dateFormatter: DateFormatter = {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
            
            return dateFormatter
        }()
        
        self.dateLabel.text = dateFormatter.string(from: date1!)

        peopleLabel.text = "최소 출발 인원 \(self.people! + 1)"
        self.btnCatch.backgroundColor = UIColor(named: "buttonYellow")
        self.btnCatch.layer.cornerRadius = 15
        
        self.viewCatcher.layer.cornerRadius = 20
        self.viewCatcher.layer.borderWidth = 2
        self.viewCatcher.layer.borderColor = UIColor(named: "buttonYellow")?.cgColor
        self.viewCatcher.layer.shadowColor = UIColor.black.cgColor // 검정색 사용
        self.viewCatcher.layer.masksToBounds = false // view 벗어나면 잘라낼 것인지
        self.viewCatcher.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치 조정
        self.viewCatcher.layer.shadowRadius = 3 // 반경
        self.viewCatcher.layer.shadowOpacity = 0.3 // alpha값
        
        self.viewCatcher2.layer.cornerRadius = 20
        self.viewCatcher2.layer.shadowColor = UIColor.black.cgColor // 검정색 사용
        self.viewCatcher2.layer.masksToBounds = false // view 벗어나면 잘라낼 것인지
        self.viewCatcher2.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치 조정
        self.viewCatcher2.layer.shadowRadius = 3 // 반경
        self.viewCatcher2.layer.shadowOpacity = 0.3 // alpha값
        
        self.viewCatcher3.layer.cornerRadius = 20
        self.viewCatcher3.layer.shadowColor = UIColor.black.cgColor // 검정색 사용
        self.viewCatcher3.layer.masksToBounds = false // view 벗어나면 잘라낼 것인지
        self.viewCatcher3.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치 조정
        self.viewCatcher3.layer.shadowRadius = 3 // 반경
        self.viewCatcher3.layer.shadowOpacity = 0.3 // alpha값
        
        self.viewCatcher4.layer.cornerRadius = 20
        self.viewCatcher4.layer.shadowColor = UIColor.black.cgColor // 검정색 사용
        self.viewCatcher4.layer.masksToBounds = false // view 벗어나면 잘라낼 것인지
        self.viewCatcher4.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치 조정
        self.viewCatcher4.layer.shadowRadius = 3 // 반경
        self.viewCatcher4.layer.shadowOpacity = 0.3 // alpha값
        
        
    }

}

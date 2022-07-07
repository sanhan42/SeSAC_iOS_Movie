//
//  SecondViewController.swift
//  Movie
//
//  Created by 한상민 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    // 아웃렛 변수
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // 뷰컨트롤러 생명주기 중 하나 - 사용자에게 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        bannerImageView.layer.cornerRadius = 100
        bannerImageView.layer.borderWidth = 5
        bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        titleLabel.text = "국제시장"
        titleLabel.backgroundColor = .yellow
        titleLabel.textColor = UIColor.red
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        // Do any additional setup after loading the view.
    }
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
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

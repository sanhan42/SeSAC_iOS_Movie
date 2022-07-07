//
//  ViewController.swift
//  Movie
//
//  Created by 한상민 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var previewImage1: UIImageView!
    @IBOutlet weak var previewImage2: UIImageView!
    @IBOutlet weak var previewImage3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previewImage1.layer.cornerRadius = 62
        previewImage2.layer.cornerRadius = 62
        previewImage3.layer.cornerRadius = 62
        // Do any additional setup after loading the view.
    }


}


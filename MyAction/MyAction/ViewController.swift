//
//  ViewController.swift
//  MyAction
//
//  Created by Park Jiwoong on 11/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MyButton: UIButton!
    
    @IBOutlet weak var Lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didtapMyButton(_ sender: Any) {
        print("배경색상을 노란색으로 바꿀게요")
//       view.backgroundColor = .yellow
        Lable.text = "hello 두더지"
    }
    
}


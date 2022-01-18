//
//  ViewController.swift
//  KakaoProfile
//
//  Created by river.o on 2022/01/18.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        self.setLabel()
    }

    fileprivate func setLabel() {
        self.nameLabel.text = "River"
        self.descriptionLabel.text = "카르페 디엠"
        
        self.nameLabel.font = UIFont.systemFont(ofSize: 24)
        self.descriptionLabel.font = UIFont.systemFont(ofSize: 15)

        self.nameLabel.sizeToFit()
        self.descriptionLabel.sizeToFit()
        
        self.nameLabel.textAlignment = .center
        self.descriptionLabel.textAlignment = .center
        
        self.nameLabel.center.x = self.view.frame.width / 2
        self.descriptionLabel.center.x = self.view.frame.width / 2
    }
    
}


//
//  ViewController.swift
//  KakaoProfile
//
//  Created by river.o on 2022/01/18.
//

import UIKit

class ProfileViewController: UIViewController, EditProfileDataProtocol {

    var nameText : String?
    var descriptionText: String?
    var profileImage: UIImage?
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func editButtonTouched(_ sender: Any) {
        nameLabel.textColor = UIColor.blue
        nameLabel.backgroundColor = UIColor.yellow
        nameLabel.alpha = 0.5
        descriptionLabel.text = "크루미션"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        initUI()
    }

    private func initUI() {
        nameText = "River"
        descriptionText = "카르페 디엠"
        
        setUI()
    }
    
    private func setUI() {
        nameLabel.text = nameText
        descriptionLabel.text = descriptionText
        
        nameLabel.font = UIFont.systemFont(ofSize: 24)
        descriptionLabel.font = UIFont.systemFont(ofSize: 15)

        nameLabel.sizeToFit()
        descriptionLabel.sizeToFit()
        
        nameLabel.textAlignment = .center
        descriptionLabel.textAlignment = .center
        
        nameLabel.center.x = view.frame.width / 2
        descriptionLabel.center.x = view.frame.width / 2
        
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = profileImage
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.nameText = nameLabel.text ?? ""
            destination.descriptionText = descriptionLabel.text ?? ""
            destination.profileImage = profileImageView.image

            destination.profileDelegate = self
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    func sendProfileData(nameText: String?, descriptionText: String?, profileImage: UIImage?) {
        self.nameText = nameText
        self.descriptionText = descriptionText
        self.profileImage = profileImage
        
        setUI()
    }
}


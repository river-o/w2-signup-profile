//
//  EditViewController.swift
//  KakaoProfile
//
//  Created by river.o on 2022/01/18.
//

import UIKit

class EditViewController: UIViewController {

    var nameText : String?
    var descriptionText: String?
    var profileImage: UIImage?
    
    private let imagePickerController = UIImagePickerController()

    weak var profileDelegate: EditProfileDataProtocol?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBAction func selectCancleButtonTouched(_ sender: Any) {
        close()
    }
    
    @IBAction func selectImageButtonTouched(_ sender: Any) {
        let imagePickerType = UIImagePickerController.SourceType.photoLibrary
        guard UIImagePickerController.isSourceTypeAvailable(imagePickerType) else { return }

        imagePickerController.sourceType = imagePickerType
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func selectDoneButtonTouched(_ sender: Any) {
        profileDelegate?.sendProfileData(nameText: nameTextField.text, descriptionText: descriptionTextField.text, profileImage: profileImage)
        close()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    private func initUI() {
        nameTextField.text = nameText
        descriptionTextField.text = descriptionText
        
        profileImageView.contentMode = .scaleAspectFill
        if profileImage != nil {
            profileImageView.image = profileImage
        }
    }
    
    private func close() {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
}

extension EditViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileImage = image
            profileImageView.image = image
            
            dismiss(animated: true)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

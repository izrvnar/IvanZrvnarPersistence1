//
//  ViewController.swift
//  IvanZrvnarPersistence1
//
//  Created by Ivan Zrvnar on 2022-02-23.
//

import UIKit

// changing the
class ViewController: UICollectionViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
//MARK: -View did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // adding a button to request photo acsess
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))

    }//: View did load

    //MARK: -METHODS
    
    // how many items to populate the grid
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    // recycling collection view cells
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as? PersonCell else{
            fatalError("Unable to deque person cell")
        }
        return cell
    }
    
    // adding new person fucntion and conforming to UI image picker
    @objc func addNewPerson() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    // image picker method
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // typecasting as an image
        guard let image = info[.editedImage] as? UIImage else {return}
        
        // compressing the image quality and creating a UUID object 
        let imageName = UUID().uuidString
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
        if let jpegData = image.jpegData(compressionQuality: 0.8) {
                try? jpegData.write(to: imagePath)
            }

            dismiss(animated: true)
    }
        // finding a path to the photos
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
    

}//: View Controller


//
//  ProfileNavigationController.swift
//  NativeAvatarBase
//
//  Created by Альберт Хайдаров on 24.07.2023.
//

import UIKit

open class ProfileNavigationController: UINavigationController, UINavigationControllerDelegate {
    
//
//    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = .init(systemName: "person.crop.circle.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .lightGray
        delegate = self
    }
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        
        let navBar = navigationBar
       
        navBar.subviews.forEach { subview in
            let stringFromClass = NSStringFromClass(subview.classForCoder)
            guard stringFromClass.contains("UINavigationBarLargeTitleView") else {return}
            
//            if imageView.superview != subview {
//                imageView.removeFromSuperview()
                subview.addSubview(imageView)
//            }
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.removeConstraints(imageView.constraints)
            
            imageView.widthAnchor.constraint(equalToConstant: 36).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 36).isActive = true
            imageView.bottomAnchor.constraint(equalTo: imageView.superview!.bottomAnchor, constant: -10).isActive = true
            imageView.trailingAnchor.constraint(equalTo: subview.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        }
    }
}

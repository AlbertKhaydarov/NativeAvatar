//
//  ViewController.swift
//  Native Avatar
//
//  Created by Альберт Хайдаров on 23.07.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = view.bounds
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize = CGSize(width: view.bounds.width, height: 2000)
        return scrollView
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.crop.circle.fill")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.tintColor = .lightGray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Avatar"
        view.addSubview(scrollView)
        scrollView.delegate = self
        setupUI()
    }
    
    private func setupUI() {
        guard let navigationBar = navigationController?.navigationBar else { return }
//        if let prefersLargeTitles = navigationBar.subviews.filter({ NSStringFromClass(type(of: $0)).contains("LargeTitleView") }).first {
//            for subview in prefersLargeTitles.subviews {
//                prefersLargeTitles.addSubview(imageView)
//                NSLayoutConstraint.activate([
//                    imageView.rightAnchor.constraint(equalTo: prefersLargeTitles.rightAnchor,
//                                                     constant: -16),
//                    imageView.centerYAnchor.constraint(equalTo: subview.centerYAnchor),
//                    imageView.heightAnchor.constraint(equalToConstant: 36),
//                    imageView.widthAnchor.constraint(equalToConstant: 36)
//                ])
//            }
//        }     
    }
}


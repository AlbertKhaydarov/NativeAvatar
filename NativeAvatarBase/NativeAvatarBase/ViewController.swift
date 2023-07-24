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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Avatar"
        view.addSubview(scrollView)
        scrollView.delegate = self
    }
 
}


//
//  ViewController.swift
//  Autolayout
//
//  Created by Kelvin Tan on 9/22/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "user"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleTextView: UITextView = {
        let textView = UITextView()
        textView.text = "24/7 support online"
        textView.font = .boldSystemFont(ofSize: 16)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.isSelectable = false
        return textView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Come talk to our friendly representative who will always assist you with smile and never complain and always assists assist assist in everything. Come come come come come"
        textView.textAlignment = .center
        textView.textColor = .gray
        textView.font = UIFont.systemFont(ofSize: 12)
        textView.isSelectable = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(iconImageView)
        view.addSubview(titleTextView)
        view.addSubview(descriptionTextView)
        configureLayout()
    }
    
    private func configureLayout(){
        iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        iconImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        titleTextView.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor, constant: 10).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
    }
    
    

}


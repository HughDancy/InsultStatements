//
//  ViewController.swift
//  InsultStatements
//
//  Created by Борис Киселев on 07.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - SubView's
    
    let angryImage: UIImageView = {
        let angryImage = UIImageView()
        angryImage.image = UIImage(named: "angryMan")
        angryImage.contentMode = .scaleAspectFill
        return angryImage
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        buttonSettings()
        
        
        
    }
    
    //MARK: - Setup Hierarchy
    
    private func setupHierarchy() {
        view.addSubview(button)
        view.addSubview(angryImage)
        view.sendSubviewToBack(angryImage)
    }
    
    //MARK: - Button settings
    
    private func buttonSettings() {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = .systemOrange
        configuration.title = "Push me, asshole!"
        
        button.configuration = configuration
    }
    
    //MARK: - Setup Layout
    
    func setupLayout() {
        angryImage.translatesAutoresizingMaskIntoConstraints = false
        angryImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        angryImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        angryImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        angryImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 15).isActive = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -220).isActive = true
    
    }
}


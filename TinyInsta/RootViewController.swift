//
//  RootViewController.swift
//  TinyInsta
//
//  Created by Alex Nagy on 31/05/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class RootViewController: UIViewController {
    
    // MARK:- Properties
    
    // MARK:- Views
    
    lazy var timeBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "NavigationBarButtonItemTime").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(timeBarButtonItemTapped))
    lazy var menuBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "NavigationBarButtonItemMenu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(menuBarButtonItemTapped))
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var businessStatsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    lazy var profileStatsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    // MARK:- Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        setupNavigation()
        setupViews()
    }
    
    // MARK:- Setup Navigation
    
    fileprivate func setupNavigation() {
        title = "rebeloper"
        self.navigationItem.setLeftBarButton(timeBarButtonItem, animated: false)
        self.navigationItem.setRightBarButton(menuBarButtonItem, animated: false)
    }
    
    // MARK:- Setup Views

    fileprivate func setupViews() {
        addViews()
        constrainViews()
    }
    
    fileprivate func addViews() {
        view.addSubview(containerView)
        view.addSubview(businessStatsContainerView)
        view.addSubview(profileStatsContainerView)
    }
    
    fileprivate func constrainViews() {
        containerView.edgesToSuperview(excluding: .bottom, usingSafeArea: true)
        containerView.height(1000)
        
        businessStatsContainerView.height(50)
        profileStatsContainerView.height(400)
        
        containerView.stack([businessStatsContainerView, profileStatsContainerView, UIView()], axis: .vertical, spacing: 0.5)
    }
    
    // MARK:- Handlers
    
    @objc fileprivate func timeBarButtonItemTapped() {
        print("Time bar button tapped")
    }
    
    @objc fileprivate func menuBarButtonItemTapped() {
        print("Menu bar button tapped")
    }

}


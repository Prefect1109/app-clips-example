//
//  ViewController.swift
//  App-clip-example
//
//  Created by Prefect on 17.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var testString: String {
        #if APPCLIP
        return "Hey you in App Clip"
        #endif
        return "Hey you in App"
    }
    
    private var testLabel: UILabel = {
        let label = UILabel()
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        
        testLabel.text = testString
        
        // Setup testLabel
        view.addSubview(testLabel)
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

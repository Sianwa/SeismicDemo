//
//  ViewController.swift
//  XCfamework Demo
//
//  Created by Kelsey Makale on 12/04/2025.
//

import UIKit
import SeismicLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
       
        let titleLabel = UILabel()
        titleLabel.text = "Subscribe to the latest news on seismic activity in your area."
        titleLabel.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .medium)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        let executeButton = UIButton(type: .system)
        executeButton.setTitle("Subscribe", for: .normal)
        executeButton.titleLabel?.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .medium)
        executeButton.backgroundColor = UIColor.systemBlue
        executeButton.setTitleColor(.white, for: .normal)
        executeButton.layer.cornerRadius = 8
        executeButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add target action for the button
        executeButton.addTarget(self, action: #selector(loadLibrary), for: .touchUpInside)
        
        // Add the button to the view
        view.addSubview(titleLabel)
        view.addSubview(executeButton)
        
        // Set up Auto Layout constraints to the center
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: executeButton.topAnchor, constant: -20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            executeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            executeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            executeButton.widthAnchor.constraint(equalToConstant: 200),
            executeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func loadLibrary(){
        do {
            try Seismic.instance.subscribe(previousUIViewController:self){
                completion in
                    self.showResponse(message: completion)
            }
        } catch {
            self.showResponse(message: error.localizedDescription)
        }
        
    }
    
    func showResponse(message: String) {
        let alert = UIAlertController(title: "Backend Report", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}


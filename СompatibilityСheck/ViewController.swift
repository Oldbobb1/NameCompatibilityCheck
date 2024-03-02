//  ViewController.swift

//  СompatibilityСheck

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let firstLabel = createLabel(text: "Names Compatibility", fontSize: 30)
    private let secondLabel = createLabel(text: "Your Name:", fontSize: 20)
    private let thirdLabel = createLabel(text: "Parther's Name:", fontSize: 20)
    
    private lazy var addNameOne = createTextField()
    private lazy var adNameTwo = createTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = createButton(setTitle: "Result")
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(showView), for: .touchUpInside)
        
        view.backgroundColor = .white
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(addNameOne)
        view.addSubview(thirdLabel)
        view.addSubview(adNameTwo)
        view.addSubview(button)
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(firstLabel.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            //          make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-200)
        }
        
        addNameOne.snp.makeConstraints { make in
            make.top.equalTo(firstLabel.snp.top).offset(100)
            make.leading.equalTo(secondLabel.snp.leading).offset(160)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        thirdLabel.snp.makeConstraints { make in
            make.top.equalTo(secondLabel.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            //          make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-200)
        }
        
        adNameTwo.snp.makeConstraints { make in
            make.top.equalTo(addNameOne.snp.top).offset(100)
            make.leading.equalTo(thirdLabel.snp.leading).offset(160)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(adNameTwo.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(160)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-160)
        }
    }
    
    @objc func showView() {
        let second = SecondViewController()
        second.firstName = addNameOne.text
        second.secondName = adNameTwo.text
        self.present(second, animated: true, completion: nil)
    }
}


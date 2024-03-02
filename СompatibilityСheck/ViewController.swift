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
        
        applyView(firstLabel, topOffset: 100, leadingOffset: 20, trailingOffset: -20)
        applyView(secondLabel, topOffset: 200, leadingOffset: -20, trailingOffset: -220)
        applyView(addNameOne, topOffset: 200, leadingOffset: 180, trailingOffset: -20)
        applyView(thirdLabel, topOffset: 300, leadingOffset: 20, trailingOffset: -220)
        applyView(adNameTwo, topOffset: 300, leadingOffset: 180, trailingOffset: -20)
        applyView(button, topOffset: 400, leadingOffset: 160, trailingOffset: -160)
    }
    
    func applyView(_ element: UIView, topOffset: CGFloat, leadingOffset: CGFloat, trailingOffset: CGFloat) {
        element.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(topOffset)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(leadingOffset)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(trailingOffset)
        }
    }
    
    @objc func showView() {
        let second = SecondViewController()
        second.firstName = addNameOne.text
        second.secondName = adNameTwo.text
        self.present(second, animated: true, completion: nil)
    }
}


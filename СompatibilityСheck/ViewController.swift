//  ViewController.swift

//  СompatibilityСheck

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Names Compatibility"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:30)
        label.textColor = .black
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Your Name:"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:20)
        label.textColor = .black
        return label
    }()
    
    private let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "Parther's Name:"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:20)
        label.textColor = .black
        return label
    }()
    
    private lazy var addNameOne: UITextField = {
        let textField = UITextField()
        textField.placeholder = ""
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var adNameTwo: UITextField = {
        let textField = UITextField()
        textField.placeholder = ""
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let buttonCreat: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Result", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCreat.addTarget(self, action: #selector(showView), for: .touchUpInside)
        
        view.backgroundColor = .white
        
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(addNameOne)
        view.addSubview(thirdLabel)
        view.addSubview(adNameTwo)
        view.addSubview(buttonCreat)
        
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
        
        buttonCreat.snp.makeConstraints { make in
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


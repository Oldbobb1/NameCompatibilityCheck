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
        view.backgroundColor = .white
    }
    
    
}


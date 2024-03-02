//  SecondView.swift

//  СompatibilityСheck

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class SecondViewController: UIViewController{
    
    private var firstName: String!
    private var secondName: String!
    
    private var resultValue = 0
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Compatibility of"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:30)
        label.textColor = .black
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name and Second Name"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:20)
        label.textColor = .black
        return label
    }()
    
    private let thirdLabel: UILabel = {
        let label = UILabel()
        label.text =  "%"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize:15)
        label.textColor = .black
        return label
    }()
    
    private let buttonCreat: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go Back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        return button
    }()
    
    private let progress: UIProgressView = {
        let prog = UIProgressView()
        //        prog.progressImage = .actions
        //        prog.trackTintColor = .gray
        prog.setProgress(0.50, animated: true)
        prog.transform = CGAffineTransform(scaleX: 1.0, y: 5.5)
        return prog
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(progress)
        view.addSubview(buttonCreat)
        view.addSubview(thirdLabel)
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(firstLabel.snp.top).offset(70)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        progress.snp.makeConstraints { make in
            make.top.equalTo(secondLabel.snp.top).offset(70)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        thirdLabel.snp.makeConstraints { make in
            make.top.equalTo(progress.snp.top).offset(50)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        buttonCreat.snp.makeConstraints { make in
            make.top.equalTo(thirdLabel.snp.top).offset(70)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(140)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-140)
        }
    }
}

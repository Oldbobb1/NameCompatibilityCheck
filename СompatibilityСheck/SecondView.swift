//  SecondView.swift

//  СompatibilityСheck

//  Created by Bobbi R. on 2.03.24.

import UIKit
import SnapKit

class SecondViewController: UIViewController{
    
    var firstName: String!
    var secondName: String!
    
    private var resultValue = 0
    
    private let firstLabel = createLabel(text: "Compatibility of", fontSize: 30)
    private let secondLabel = createLabel(text: "First Name and Second Name", fontSize: 20)
    private let thirdLabel = createLabel(text: "%", fontSize: 15)
    
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
        
        let button = createButton(setTitle: "Go Back")
        button.layer.cornerRadius = 11
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        
        resultValue = findResult()
        
        secondLabel.text = "\(firstName ?? "" ) and \(secondName ?? "" )"
        thirdLabel.text = resultValue.formatted(.percent)
        
        progress.progress = Float(resultValue) / 100
        
        view.backgroundColor = .white
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(progress)
        view.addSubview(button)
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
        
        button.snp.makeConstraints { make in
            make.top.equalTo(thirdLabel.snp.top).offset(70)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(140)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).offset(-140)
        }
    }
    
    @objc  func closeButtonTapped() {
        UIView.animate(withDuration: 0.1) {
            self.view.frame.origin.y = self.view.frame.height
        } completion: { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
                self.presentingViewController?.dismiss(animated: true)
            }
            self.removeFromParent()
            self.view.removeFromSuperview()
        }
    }
    
    private func findValue(for name: String) -> Int {
        var count = 0
        for character in name.lowercased() {
            switch character {
            case "a","i","j","q","y":
                count += 1
            case "b","k","r":
                count += 2
            case "c","g","l","s":
                count += 3
            case "d","m","t":
                count += 4
            case "e","h","n","x":
                count += 5
            case "u","v","w":
                count += 6
            case "o","z":
                count += 7
            case "f","p":
                count += 8
            default:
                count += 0
            }
        }
        return count
    }
    
    private func findResult() -> Int {
        var result = 0
        let firstValue = findValue(for: firstName)
        let secondValue = findValue(for: secondName)
        let absDifference = abs (firstValue - secondValue)
        switch absDifference {
        case 0, 1, 2:
            result = 100
        case 3, 4:
            result = 65
        case 5:
            result = 50
        case 6:
            result = 40
        default:
            result = 30
        }
        return result
    }
}


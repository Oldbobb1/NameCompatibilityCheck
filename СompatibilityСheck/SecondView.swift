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
    
    let progress: UIProgressView = {
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
        
    }
    
    
}

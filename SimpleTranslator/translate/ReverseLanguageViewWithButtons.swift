//
//  ReverseLanguageViewWithButtons.swift
//  SimpleTranslator
//
//  Created by Галина  Муравьева on 18.12.2018.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit

protocol  ReverseLanguageViewWithButtonsDelegate: class {
    func changeLanguageToCurrent(language:NSString, translateLanguage:NSString)
}

class ReverseLanguageViewWithButtons: UIView {

    weak var delegate: ReverseLanguageViewWithButtonsDelegate?
    
    lazy var curentLanguage: UIButton = {
        let curentLanguage = UIButton()
        curentLanguage.frame = CGRect(x: 10, y: 30, width: 10, height: 30)
        curentLanguage.setTitle("rus", for: .normal)
        curentLanguage.setTitleColor(UIColor.black, for: .normal)
        translateLanguage.titleLabel?.font=UIFont.boldSystemFont(ofSize: 20.0)
        curentLanguage.sizeToFit()
        
        return curentLanguage
    }()
    
    lazy var translateLanguage: UIButton = {
        let translateLanguage = UIButton()
        translateLanguage.frame = CGRect(x: 20, y: 30, width: 10, height: 30)
        translateLanguage.setTitle("eng", for: .normal)
        translateLanguage.titleLabel?.font=UIFont.boldSystemFont(ofSize: 20.0)
        translateLanguage.setTitleColor(UIColor.black, for: .normal)
        translateLanguage.sizeToFit()
        
        return translateLanguage
    }()

    lazy var reverseButton: UIButton = {
        let reverseButton = UIButton()
        reverseButton.frame = CGRect(x: 20, y: 30, width: 30, height: 30)
        reverseButton.setImage(UIImage(named: "change-01-512.png"), for: .normal)
        reverseButton.addTarget(self, action: #selector(self.reverseButtonPressed), for: .touchUpInside)
        return reverseButton
    }()
    
    @objc func reverseButtonPressed (_sender: UIButton!)
    {
        self.delegate?.changeLanguageToCurrent(language:translateLanguage.currentTitle! as NSString, translateLanguage: curentLanguage.currentTitle! as NSString)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .white
        addSubview(curentLanguage)
        addSubview(translateLanguage)
        addSubview(reverseButton)
        
    }

}

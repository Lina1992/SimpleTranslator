//
//  ViewController.swift
//  SimpleTranslator
//
//  Created by Галина  Муравьева on 18.12.2018.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit

class TranslateViewController: UIViewController ,ReverseLanguageViewWithButtonsDelegate {
    func changeLanguageToCurrent(language: NSString, translateLanguage: NSString) {
        print("",language,translateLanguage)
    }
    
//    var presenter: TranslatePresenterProtocol!
//    let configurator: TranslateConfiguratorProtocol = TranslateConfigurator()
//
    let viewWithButtons=ReverseLanguageViewWithButtons()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configurator.configure(with: self)
//        presenter.configureView()
        
        viewWithButtons.backgroundColor=UIColor.yellow
        viewWithButtons.frame=CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 100)
        viewWithButtons.delegate=self
        self.view.addSubview(viewWithButtons)
        
    }


}


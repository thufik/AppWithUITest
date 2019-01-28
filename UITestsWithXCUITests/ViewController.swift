//
//  ViewController.swift
//  UITestsWithXCUITests
//
//  Created by EquipeSuporteAplicacao on 6/19/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickToEnter(_ sender: UIButton) {
        
        
        if (txtUser.text == "Usuario" && txtPass.text == "SenhaFraca"){
            let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
            let welcomeTabController = storyBoard.instantiateViewController(withIdentifier: "tabController") as! UITabBarController
            
            self.present(welcomeTabController, animated: true, completion: nil)
        }
        
        let alertView = UIAlertController(title: "Atenção", message: "Ocorreu um erro", preferredStyle: .alert)
        let alertActionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertView.addAction(alertActionOk)
        
        
        
         self.present(alertView, animated: true, completion: nil)
        
       
    }
    
}


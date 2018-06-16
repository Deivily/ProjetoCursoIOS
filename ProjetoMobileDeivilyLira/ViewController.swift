//
//  ViewController.swift
//  ProjetoMobileDeivilyLira
//
//  Created by Treinamento on 19/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_registar_numeracao: UIButton!
    @IBOutlet weak var btn_listar_consumo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func registrarNumeracao(_ sender: Any) {
//        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
//        let viewController = storyBoard.instantiateViewController(withIdentifier: "view_registrar_numeracao")
//        self.navigationController?.pushViewController(viewController, animated: true)
    }
        
    /*@IBAction func listarConsumo(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "view_listar_consumo")
        self.navigationController?.pushViewController(viewController, animated: true)
    }*/
}



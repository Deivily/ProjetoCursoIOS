//
//  ListarDiasViewController.swift
//  ProjetoMobileDeivilyLira
//
//  Created by Treinamento on 02/06/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ListarDiasViewController: UIViewController {
    
    @IBOutlet weak var listar_dias_tb_view: UITableView!
    @IBOutlet weak var label_titulo_mes: UILabel!
    var titulo_mes = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_titulo_mes.text = titulo_mes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

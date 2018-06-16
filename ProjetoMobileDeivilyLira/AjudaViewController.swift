//
//  AjudaViewController.swift
//  ProjetoMobileDeivilyLira
//
//  Created by Treinamento on 02/06/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class AjudaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tb_view_data: [String] = ["Sobre", "Registrar Numeração", "Maior Consumo", "Consumo Médio", "Listar Consumo"]

    @IBOutlet weak var ajuda_tb_view: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ajuda_tb_view.delegate = self
        self.ajuda_tb_view.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tb_view_data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ajuda_tb_view.dequeueReusableCell(withIdentifier: "tb_view_cell", for: indexPath)
        
        cell.textLabel?.text = tb_view_data[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "exibe_ajuda_segue" {
            if let destination = segue.destination as? ExibeAjudaViewController {
                if let selectedCell = sender as? UITableViewCell{
                    destination.titulo_ajuda = (selectedCell.textLabel?.text)!
                }
            }
        }
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

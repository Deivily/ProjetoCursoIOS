//
//  ListarConsumoViewController.swift
//  ProjetoMobileDeivilyLira
//
//  Created by Treinamento on 19/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ListarConsumoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tb_view_data: [String] = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    
    @IBOutlet weak var listar_consumo_tb_view: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listar_consumo_tb_view.delegate = self
        self.listar_consumo_tb_view.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tb_view_data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listar_consumo_tb_view.dequeueReusableCell(withIdentifier: "tb_view_cell", for: indexPath)
        
        cell.textLabel?.text = tb_view_data[indexPath.row]
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       performSegue(withIdentifier: "listar_dias_segue", sender: indexPath.row)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listar_dias_segue" {
            if let destination = segue.destination as? ListarDiasViewController {
                if let selectedCell = sender as? UITableViewCell{
                    destination.titulo_mes = (selectedCell.textLabel?.text)!
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

//
//  ExibeAjudaViewController.swift
//  ProjetoMobileDeivilyLira
//
//  Created by Treinamento on 02/06/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ExibeAjudaViewController: UIViewController {

    
    @IBOutlet weak var txt_ajuda: UILabel!
    @IBOutlet weak var label_titulo_ajuda: UILabel!
    var titulo_ajuda = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label_titulo_ajuda.text = titulo_ajuda
        
        switch label_titulo_ajuda.text {
        case "Sobre"?:
            txt_ajuda.text = "Lorem ipsum fusce duis nisl tempus donec dictum at curae leo habitasse, sociosqu luctus at quisque curabitur posuere tellus adipiscing justo. mollis est donec velit cubilia non libero et inceptos urna aliquet, varius ut netus quisque ac est iaculis libero vivamus turpis, tellus habitasse et aptent suscipit pharetra maecenas eget odio. scelerisque malesuada ipsum imperdiet commodo venenatis ipsum ac rutrum urna magna sociosqu, malesuada hac lacinia duis ultrices lacinia curae integer libero ut. eu sodales viverra ac nam dictumst litora velit, scelerisque maecenas aenean molestie vivamus condimentum mi, aliquet ultricies euismod felis mattis accumsan."
        default:
            txt_ajuda.text = "Opsss! Título näo encontrado!"
        }

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

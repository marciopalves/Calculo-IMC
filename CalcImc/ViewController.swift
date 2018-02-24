//
//  ViewController.swift
//  CalcImc
//
//  Created by Aluno on 24/02/2018.
//  Copyright © 2018 Marcio Alves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var edtAltura: UITextField!;
    @IBOutlet weak var edtPeso: UITextField!;
    @IBOutlet weak var lblResultado: UILabel!;
    @IBOutlet weak var btnCalcular: UIButton!;
    
    @IBAction func CalcularImc(_ sender: Any) {
        let peso = Float(edtPeso.text!);
        let altura = Float(edtAltura.text!);
        let resultado = Float((peso!) / (altura! * altura!));
        
        lblResultado.text = String.init(format:"Resultado: %0.2f", resultado);
        clear();
    }
    
    func clear(){
        edtPeso.text = "";
        edtAltura.text = "";
        
    }
    
}


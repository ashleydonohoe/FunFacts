//
//  ViewController.swift
//  FunFacts
//
//  Created by Gabriele on 3/12/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = FactModel()
    
    @IBOutlet weak var factButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        let newColor = ColorModel().getRandomColor()
        view.backgroundColor = newColor
        factButton.tintColor = newColor
        funFactLabel.text = factModel.getRandomFact()
        
    }
}


//
//  ViewController.swift
//  Pyramid
//
//  Created by Neel Redkar on 3/29/19.
//  Copyright © 2019 tecton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canvas: CanvasView!
    @IBAction func clear2(_ sender: Any) {
        canvas.clearCanvas()
    }
    
    @IBAction func clear3(_ sender: Any) {
        canvas.clearCanvas()
    }
    @IBAction func clear(_ sender: Any) {
        canvas.clearCanvas()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


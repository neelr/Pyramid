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
        do {
            canvas.clearCanvas()
        } catch {
            print("OOF")
        }
    }
    
    @IBAction func red3(_ sender: Any) {
        canvas.switchtored()
    }
    @IBAction func blue3(_ sender: Any) {
        canvas.switchtoblue()
    }
    @IBAction func red2(_ sender: Any) {
        canvas.switchtored()
    }
    @IBAction func blue2(_ sender: Any) {
        canvas.switchtoblue()
    }
    @IBAction func blue1(_ sender: Any) {
        canvas.switchtoblue()
    }
    @IBAction func red1(_ sender: Any) {
        canvas.switchtored()
    }
    @IBAction func clear3(_ sender: Any) {
        do {
            canvas.clearCanvas()
        } catch {
            print("OOF")
        }
    }
    @IBAction func cleartriangle(_ sender: Any) {
        do {
            canvas.clearCanvas()
        } catch {
            print("OOF")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


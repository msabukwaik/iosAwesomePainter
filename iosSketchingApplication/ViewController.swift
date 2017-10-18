//
//  ViewController.swift
//  iosSketchingApplication
//
//  Created by Mohammed S A Kwaik on 10/19/17.
//  Copyright © 2017 Mohammed S A Kwaik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var cyanButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var magentaButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    var fontColor:UIColor = .black

    @IBAction func blackButtonHandler(_ sender: Any) {
        fontColor = .black
    }
    
    @IBAction func blueButtonHandler(_ sender: Any) {
        fontColor = .blue
    }
    
    @IBAction func brownButtonHandler(_ sender: Any) {
        fontColor = .brown
    }
    
    @IBAction func cyanButtonHandler(_ sender: Any) {
        fontColor = .cyan
    }
    
    @IBAction func greenButtonHandler(_ sender: Any) {
        fontColor = .green
    }
    
    @IBAction func magentaButtonHandler(_ sender: Any) {
        fontColor = .magenta
    }
    
    @IBAction func orangeButtonHandler(_ sender: Any) {
        fontColor = .orange
    }
    
    
    @IBAction func purpleButtonHandler(_ sender: Any) {
        fontColor = .purple
    }
    
    @IBAction func redButtonHandler(_ sender: Any) {
        fontColor = .red
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blackButton.layer.cornerRadius = blackButton.frame.size.width/2
        blueButton.layer.cornerRadius = blueButton.frame.size.width/2
        brownButton.layer.cornerRadius = brownButton.frame.size.width/2
        cyanButton.layer.cornerRadius = cyanButton.frame.size.width/2
        greenButton.layer.cornerRadius = greenButton.frame.size.width/2
        magentaButton.layer.cornerRadius = magentaButton.frame.size.width/2
        orangeButton.layer.cornerRadius = orangeButton.frame.size.width/2
        purpleButton.layer.cornerRadius = purpleButton.frame.size.width/2
        redButton.layer.cornerRadius = redButton.frame.size.width/2
    }
    
    func drawPoint(center:CGPoint, size:CGSize, color:UIColor) -> UIView{
        let view = UIView();
        view.frame.size = size
        view.center = center
        view.backgroundColor = color
        view.layer.cornerRadius = view.frame.size.width/2
        return view
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            self.view.addSubview(drawPoint(center: touch.location(in: self.view), size: CGSize(width: 10, height: 10), color: self.fontColor))
            self.view.layoutIfNeeded()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  colorPickerV1
//
//  Created by Alexander Tarasov on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {

    //colorview
    @IBOutlet weak var colorView: UIView!
    //label value
    @IBOutlet weak var labelRedValue: UILabel!
    @IBOutlet weak var labelGreenValue: UILabel!
    @IBOutlet weak var labelBlueValue: UILabel!
    //slider
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //colorview
        colorView.layer.cornerRadius = 20
        SetColor()
        
        
        //label value
        labelRedValue.text = String(format: "%.2f", sliderRed.value)
        labelGreenValue.text = String(format: "%.2f", sliderGreen.value)
        labelBlueValue.text = String(format: "%.2f", sliderBlue.value)
        
        //slider
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
       
    }
    
    //variables for color state
    var redValue:CGFloat = 1
    var greenValue:CGFloat = 1
    var blueValue:CGFloat = 1
    
    
    @IBAction func sliderRedAction(_ sender: Any) {
        labelRedValue.text = String(format: "%.2f", sliderRed.value)
        SetColor()
    }
    

    @IBAction func sliderGreenAction(_ sender: Any) {
        
        labelGreenValue.text = String(format: "%.2f", sliderGreen.value)
        SetColor()
    }
    
    @IBAction func sliderBlueAction(_ sender: Any) {
        labelBlueValue.text = String(format: "%.2f", sliderBlue.value)
        SetColor()
    }
    
    
    func SetColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                            green: CGFloat(sliderGreen.value),
                                            blue: CGFloat(sliderBlue.value),
                                            alpha: 1)
    }
}


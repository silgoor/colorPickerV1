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
        colorView.backgroundColor = UIColor(red: 1, green: 1,
                                            blue: 1, alpha: 1)
        
        //label value
        labelRedValue.text = String(round(sliderRed.value))
        labelGreenValue.text = String(round(sliderGreen.value))
        labelBlueValue.text = String(round(sliderBlue.value))
        
        //slider
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
      
    }
    var redValue:CGFloat = 1
    var greenValue:CGFloat = 1
    var blueValue:CGFloat = 1
    
    
    @IBAction func sliderRedAction(_ sender: Any) {
        labelRedValue.text = String(round(100*sliderRed.value)/100)
        redValue = CGFloat(sliderRed.value)
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue,
                                            blue: blueValue, alpha: 1)
    }
    

   
    @IBAction func sliderGreenAction(_ sender: Any) {
        
        labelGreenValue.text = String(round(100*sliderGreen.value)/100)
        greenValue = CGFloat(sliderGreen.value)
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
    }
    
    @IBAction func sliderBlueAction(_ sender: Any) {
        labelBlueValue.text = String(round(100*sliderBlue.value)/100)
        blueValue = CGFloat(sliderBlue.value)
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue,
                                            blue: blueValue, alpha: 1)
    }
}


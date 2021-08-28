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
        setValue(for: labelRedValue, labelGreenValue, labelBlueValue)
        
        //slider
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        
       
    }
    
    //variables for color state
    var redValue:CGFloat = 1
    var greenValue:CGFloat = 1
    var blueValue:CGFloat = 1
    
    //change color
    @IBAction func slidersChangeColor(_ sender: UISlider) {
        SetColor()
        
        switch sender.tag {
        case 0: labelRedValue.text = stringValue(from: sliderRed)
        case 1: labelGreenValue.text = stringValue(from: sliderGreen)
        case 2: labelBlueValue.text = stringValue(from: sliderBlue)
        default:break
        }

        
       
        
        
    }
    
    
    private func SetColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                            green: CGFloat(sliderGreen.value),
                                            blue: CGFloat(sliderBlue.value),
                                            alpha: 1)
    }
    
    
    private func setValue(for labels: UILabel...) {
        labels.forEach{ label in
            switch label.tag {
            case 0: labelRedValue.text = stringValue(from: sliderRed)
            case 1: labelGreenValue.text = stringValue(from: sliderGreen)
            case 2: labelBlueValue.text = stringValue(from: sliderBlue)
            default: break
            }
        }
            
        }
    
    
    private func stringValue(from slider:UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}


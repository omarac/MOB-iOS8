import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!

    @IBOutlet weak var displayLabel: UILabel!
    
    func numBorderChange() {
        divideButton.layer.borderWidth = 0.25
        multiplyButton.layer.borderWidth = 0.25
        subtractButton.layer.borderWidth = 0.25
        addButton.layer.borderWidth = 0.25
    }
    
    func clearOnNumClick(){
        clearButton.setTitle("C", forState: .Normal)
    }
    
    var total = Double(0)
    var current = Double(0)
    var option = 0
    var convert = Double(0)
    var beforeConvert = Double(0)
    var percent = Double(0)
    let dot = "."
    var click = 0
    var same = Double(0)
    @IBAction func clearDisplay(sender: AnyObject) {
        clearButton.setTitle("AC", forState: .Normal)
        if current > Double(0) {
            current = 0
            click = 0
            print(total)
            print(current)
        } else {
        total = 0
        current = 0
        convert = 0
        beforeConvert = 0
        percent = 0
        click = 0
        }
                displayLabel.text! = String (format: "%g",current)
    }
    
    @IBAction func plusMinusClick(sender: AnyObject) {
        if total == 0 {
        convert = current * 2
        current = current - convert
        displayLabel.text = String (format: "%g",current)
        } else if current == 0{
            convert = total * 2
            total = total - convert
            displayLabel.text = String(format: "%g",total)
        } else {
            convert = current * 2
            current = current - convert
            displayLabel.text = String (format: "%g",current)
        }
        }
    
    
    
    @IBAction func zeroClick(sender: AnyObject) {
        
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(0)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func oneClick(sender: AnyObject){
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(1)
        displayLabel.text = String (format: "%g",current)

    }
    
    @IBAction func twoClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(2)
        displayLabel.text = String (format: "%g",current)
    }

    @IBAction func threeClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(3)
        displayLabel.text = String (format: "%g",current)
    }
    @IBAction func fourClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(4)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func fiveClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(5)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func sixClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(6)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func sevenClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(7)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func eightClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(8)
        displayLabel.text = String (format: "%g",current)
    }
    
    @IBAction func nineClick(sender: AnyObject) {
        numBorderChange()
        clearOnNumClick()
        current = current * Double(10)
        current = current + Double(9)
        displayLabel.text = String (format: "%g",current)
    }
    
    
    @IBAction func dotClick(sender: AnyObject) {
        if click == 0 {
        displayLabel.text = displayLabel.text! + dot
        current = Double(displayLabel.text!)!
            print(current)
            click = 1}
    }
    
    @IBAction func divideClick(sender: AnyObject) {
        divideButton.layer.borderWidth = 2
        multiplyButton.layer.borderWidth = 0.25
        subtractButton.layer.borderWidth = 0.25
        addButton.layer.borderWidth = 0.25
        if total == 0 {
            total = current
        }
        else {
            switch option {
            case 1:
                if current == Double(0)
                {
                displayLabel.text = "Error"
                } else {
                total = total / current
                    displayLabel.text = String(format: "%g",total)}
                break
            case 2:
                total = total * current
                 displayLabel.text = String(format: "%g",total)
                break
            case 3:
                total = total - current
                 displayLabel.text = String(format: "%g",total)
                break
            case 4:
                total = total + current
                 displayLabel.text = String(format: "%g",total)
                break
            default:
                break
            }
        }
        option = 1
        current = 0
        click = 0
    }
    
    @IBAction func multiplyClick(sender: AnyObject) {
        divideButton.layer.borderWidth = 0.25
        multiplyButton.layer.borderWidth = 2
        subtractButton.layer.borderWidth = 0.25
        addButton.layer.borderWidth = 0.25
        
        if total == 0 {
            total = current
        }
        else {
            switch option {
            case 1:
                print(current)
                if current == Double(0) {
                    displayLabel.text = "Error"
                } else {
                    total = total / current
                    displayLabel.text = String(format: "%g",total)}
                break
            case 2:
                total = total * current
                 displayLabel.text = String(format: "%g",total)
                break
            case 3:
                total = total - current
                 displayLabel.text = String(format: "%g",total)
                break
            case 4:
                total = total + current
                displayLabel.text = String(format: "%g",total)
                break
            default:
                break
            }
        }
        option = 2
        current = 0
        click = 0
    }
    
    @IBAction func subtractClick(sender: AnyObject) {
        divideButton.layer.borderWidth = 0.25
        multiplyButton.layer.borderWidth = 0.25
        subtractButton.layer.borderWidth = 2
        addButton.layer.borderWidth = 0.25
        
        if total == 0 {
            total = current
        }
        else {
            switch option {
            case 1:
                print(current)
                if current == Double(0) {
                    displayLabel.text = "Error"
                } else {
                    total = total / current
                    displayLabel.text = String(format: "%g",total)}
                break

            case 2:
                total = total * current
                 displayLabel.text = String(format: "%g",total)
                break
            case 3:
                total = total - current
                 displayLabel.text = String(format: "%g",total)
                break
            case 4:
                total = total + current
                 displayLabel.text = String(format: "%g",total)
                break
            default:
                break
            }
        }
        option = 3
        current = 0
        click = 0
        
    }
    
    @IBAction func addClick(sender: AnyObject) {
        divideButton.layer.borderWidth = 0.25
        multiplyButton.layer.borderWidth = 0.25
        subtractButton.layer.borderWidth = 0.25
        addButton.layer.borderWidth = 2
        
        if total == 0 {
            total = current
        }
      else if current == 0 {
            current = total
            total = current + total
            displayLabel.text = String(format: "%g",total)
            print(current)
     }
        else {
            switch option {
            case 1:
                print(current)
                if current == Double(0) {
                    displayLabel.text = "Error"
                } else {
                    total = total / current
                    displayLabel.text = String(format: "%g",total)}
                break

            case 2:
                total = total * current
                 displayLabel.text = String(format: "%g",total)
                break
            case 3:
                total = total - current
                 displayLabel.text = String(format: "%g",total)
                break
            case 4:
                total = total + current
                displayLabel.text = String(format: "%g",total)
                
                break
            default:
                break
            }
        }
        option = 4
        current = 0
        click = 0
        
    }
    
    @IBAction func equalsClick(sender: AnyObject) {
        numBorderChange()
        if total == 0 {
            total = current
        }
        else {
            switch option {
            case 1:
                print(current)
                if current == Double(0) {
                    displayLabel.text = "Error"
                } else {
                    total = total / current
                    displayLabel.text = String(format: "%g",total)}
                break
            case 2:
                total = total * current
                 displayLabel.text = String(format: "%g",total)
                break
            case 3:
                total = total - current
                 displayLabel.text = String(format: "%g",total)
                break
            case 4:
                total = total + current
                 displayLabel.text = String(format: "%g",total)
                break
            default:
                break
            }
        }
        option = 0
        current = 0
        click = 0
        
    }
    
    @IBAction func percentClick(sender: AnyObject) {
       
if total == 0 {
            total = current
            current = 0
            current = total / 100
             displayLabel.text = String (format: "%g", current)
        }
        else {
            switch option {
            case 1:
                percent = Double(total) / 1000
                print(percent)
                displayLabel.text = String(format: "%g",percent)
                break
            case 2:
                percent = Double(total) / 1000
                print(percent)
                displayLabel.text = String(format: "%g",percent)
                break
            case 3:
                percent = Double(total) / 100
                percent = percent * current
                displayLabel.text = String(format: "%g",percent)
                break
            case 4:
                percent = Double(total) / 100
                percent = percent * current
                displayLabel.text = String(format: "%g",percent)
                break
            default:
                break
            }
        }
        current = percent
        click = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        //    0 Border
        zeroButton.layer.borderWidth = 0.25
        zeroButton.layer.borderColor = UIColor.blackColor().CGColor
        //              0 Border
        
        //    1 Border
        oneButton.layer.borderWidth = 0.25
        oneButton.layer.borderColor = UIColor.blackColor().CGColor
        //              1 Border
        
        //     2 Border
        twoButton.layer.borderWidth = 0.25
        twoButton.layer.borderColor = UIColor.blackColor().CGColor
        //                 2 Border
        
        //     3 Border
        threeButton.layer.borderWidth = 0.25
        threeButton.layer.borderColor = UIColor.blackColor().CGColor
        //                3 Border
        
        //    4 Border
        fourButton.layer.borderWidth = 0.25
        fourButton.layer.borderColor = UIColor.blackColor().CGColor
        //               4 Border
        
        //    5 Border
        fiveButton.layer.borderWidth = 0.25
        fiveButton.layer.borderColor = UIColor.blackColor().CGColor
        //              5Border
        
        //    6 Border
        sixButton.layer.borderWidth = 0.25
        sixButton.layer.borderColor = UIColor.blackColor().CGColor
        //             6 Border
        
        //    7 Border
        sevenButton.layer.borderWidth = 0.25
        sevenButton.layer.borderColor = UIColor.blackColor().CGColor
        //                 7 Border
        
        //     8 Border
        eightButton.layer.borderWidth = 0.25
        eightButton.layer.borderColor = UIColor.blackColor().CGColor
        //              8 Border
        
        //    9 Border
        nineButton.layer.borderWidth = 0.25
        nineButton.layer.borderColor = UIColor.blackColor().CGColor
        //             9 Border
        
        //    Dot Border
        dotButton.layer.borderWidth = 0.25
        dotButton.layer.borderColor = UIColor.blackColor().CGColor
        //               Dot Border
    
        
        //    Clear Border
        clearButton.layer.borderWidth = 0.25
        clearButton.layer.borderColor = UIColor.blackColor().CGColor
        //                 Clear Border
        
        
        //     Plus Minus Border
        plusMinusButton.layer.borderWidth = 0.25
        plusMinusButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Plus Minus Border
        
        //     Percent Border
        percentButton.layer.borderWidth = 0.25
        percentButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Percent Border
        
        //     Divide Border
        divideButton.layer.borderWidth = 0.25
        divideButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Divide Border
        
        //     Multiply Border
        multiplyButton.layer.borderWidth = 0.25
        multiplyButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Multiple Border
        
        //     Subtract Border
        subtractButton.layer.borderWidth = 0.25
        subtractButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Subtract Border
        
        //      Addition Border
        addButton.layer.borderWidth = 0.25
        addButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Addition Border
        
        //      Equal Border
        equalsButton.layer.borderWidth = 0.25
        equalsButton.layer.borderColor = UIColor.blackColor().CGColor
        //                  Equal Border
    }
   

    


}


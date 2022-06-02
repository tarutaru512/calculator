

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstNumberText:UILabel!
    @IBOutlet var firstOperatorText:UILabel!
    @IBOutlet var secondOperatorText:UILabel!
    @IBOutlet var secondNumberText:UILabel!
    @IBOutlet var thirdNumberText: UILabel!
    //@IBOutlet var forthNumberText:UILabel!
    @IBOutlet var resultnumberText:UILabel!
    @IBOutlet var buttonLayout :UIButton!
    var firstNumber:Int!
    var secondNumber:Int!
    var thirdNumber:Int!
    var resultNumber:Int!
    var index:Int = 0
    
    func display (){
        firstNumberText.text = String(firstNumber)
        secondNumberText.text = String(secondNumber)
        thirdNumberText.text = String(thirdNumber)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLayout.layer.cornerRadius = 15
        
        firstNumber = 0
        secondNumber = 0
        thirdNumber = 0
        
        // Do any ad                         ditional setup after loading the view.
    }
    
    @IBAction func oneBotton(){
        if index < 1 {
            firstNumber = firstNumber * 10 + 1
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 1
        }
        else {
            thirdNumber = thirdNumber * 10 + 1
        }
        display()
    }
    
    @IBAction func twoBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 2
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 2
        }
        else {
            thirdNumber = thirdNumber * 10 + 2
        }
        display()
    }
    
    @IBAction func threeBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 3
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 3
        }
        else {
            thirdNumber = thirdNumber * 10 + 3
        }
        display()
        
    }
    
    @IBAction func fourBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 4
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 4
        }
        else {
            thirdNumber = thirdNumber * 10 + 4
        }
        display()
        
    }
    @IBAction func fiveBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 5
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 5
        }
        else {
            thirdNumber = thirdNumber * 10 + 5
        }
        display()
    }
    
    @IBAction func sixBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 6
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 6
        }
        else {
            thirdNumber = thirdNumber * 10 + 6
        }
        display()
    }
    
    @IBAction func sevenBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 7
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 7
        }
        else {
            thirdNumber = thirdNumber * 10 + 7
        }
        display()
    }
    @IBAction func eightBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 8
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 8
        }
        else {
            thirdNumber = thirdNumber * 10 + 8
        }
        display()
    }
    @IBAction func nineBotton(){
        if index < 1{
            firstNumber = firstNumber * 10 + 9
        }
        else if index < 10 {
            secondNumber = secondNumber * 10 + 9
        }
        else {
            thirdNumber = thirdNumber * 10 + 9
        }
        display()
    }
    @IBAction func zeroBotton(){
        if index < 1 {
            firstNumber = firstNumber * 10
        }
        else if index < 10 {
            secondNumber = secondNumber * 10
        }
        else {
            thirdNumber = thirdNumber * 10
        }
        display()
    }
    @IBAction func zerozeroBotton(){
        if index < 1 {
            firstNumber = firstNumber * 100
            
        }
        else if index < 10 {
            secondNumber = secondNumber * 100
        }
        else {
            thirdNumber = thirdNumber * 100
        }
        display()
    }
    
    @IBAction func plus(){
        if index < 1{
            index = 1
            firstOperatorText.text = "+"
        } else if index < 10 {
            index = index * 10 + 1
            secondOperatorText.text = "+"
        }
    }
    @IBAction func minus(){
        if index < 1{
            index = 2
            firstOperatorText.text = "-"
        } else if index < 10 {
            index = index * 10 + 2
            secondOperatorText.text = "-"
        }
    }
    @IBAction func closs(){
        if index < 1{
            index = 3
            firstOperatorText.text = "×"
        } else if index < 10 {
            index = index * 10 + 3
            secondOperatorText.text = "×"
        }
    }
    @IBAction func iqoal(){
        if index == 1 {
            resultNumber = firstNumber + secondNumber
        }
        else if index == 2 {
            resultNumber = firstNumber - secondNumber
        }
        else if index == 3 {
            resultNumber = firstNumber * secondNumber
        }
        else if index == 11{
            resultNumber = firstNumber + secondNumber + thirdNumber
        }
        else if index == 12{
            resultNumber = firstNumber + secondNumber - thirdNumber
        }
        else if index == 13 {
            resultNumber = firstNumber + secondNumber * thirdNumber
        }
        else if index == 21 {
            resultNumber = firstNumber - secondNumber + thirdNumber
        }
        else if index == 22 {
            resultNumber = firstNumber - secondNumber - thirdNumber
        }
        else if index == 23 {
            resultNumber = firstNumber - secondNumber * thirdNumber
        }
        else if index == 31{
            resultNumber = firstNumber * secondNumber + thirdNumber
        }
        else if index == 32{
            resultNumber = firstNumber * secondNumber - thirdNumber
        }
        else if index == 33{
            resultNumber = firstNumber * secondNumber * thirdNumber
        }
        resultnumberText.text = String(resultNumber)
    }
    @IBAction func clear(){
        if index < 1 {
            firstNumber = 0
        }
        else if index < 10{
            secondNumber = 0
            index = 0
        }
        else if index < 20{
            thirdNumber = 0
            index = 1
        } else if index < 30{
            thirdNumber = 0
            index = 2
        }
        else{
            thirdNumber = 0
            index = 3
        }
        display()
        resultnumberText.text = ""
    }
    @IBAction func allClear(){
        firstNumber = 0
        secondNumber = 0
        thirdNumber = 0
        index = 0
        display()
        resultnumberText.text = ""
    }
    
    
}

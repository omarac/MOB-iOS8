import UIKit

class ArrayViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate{
    
    var listItems : [String] = []
    
    @IBOutlet weak var outputInput: UITableView!
    
    @IBOutlet weak var inputText: UITextField!
    
        func textFieldShouldReturn(textField: UITextField) -> Bool {
        listItems.append(inputText.text!)
        inputText.text = ""
        outputInput.reloadData()
        self.view.endEditing(true)
        print(listItems)

        return true
        }

    override func viewDidLoad() {
        super.viewDidLoad()
            outputInput.dataSource = self
            outputInput.delegate = self
//        self.dismissViewControllerAnimated(false, completion: nil)
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        self.view.backgroundColor = UIColor.redColor()

    }
    
    
       func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("listItem", forIndexPath: indexPath)
            cell.textLabel?.text = listItems[indexPath.row]
        
            return cell
        
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return listItems.count
        }
        
        
        
        
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    }


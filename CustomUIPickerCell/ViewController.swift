//
//  ViewController.swift
//  CustomUIPickerCell
//
//  Created by Frederik Jacques on 05/07/15.
//  Copyright (c) 2015 Frederik Jacques. All rights reserved.
//

import UIKit

struct RowData {
    
    let imageName:String
    let title:String
    
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: - IBOutlets
    @IBOutlet weak var pickerView: UIPickerView!
    
    // MARK: - Properties
    var data:[RowData]!
    
    // MARK: - Initializers methods
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        data = [
            RowData(imageName: "test-icon", title: "Frederik"),
            RowData(imageName: "test-icon", title: "Tom"),
            RowData(imageName: "test-icon", title: "Spencer"),
            RowData(imageName: "test-icon", title: "Steven"),
            RowData(imageName: "test-icon", title: "Jelle"),
            RowData(imageName: "test-icon", title: "Wouter"),
            RowData(imageName: "test-icon", title: "Klaus"),
            RowData(imageName: "test-icon", title: "Jasper"),
            RowData(imageName: "test-icon", title: "Liese"),
            RowData(imageName: "test-icon", title: "Wolf")
        ]
        
    }
    
    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
    
    }
    
    // MARK: - Private methods
    
    // MARK: - Public methods
    
    // MARK: - Getter & setter methods
    
    // MARK: - IBActions
    
    // MARK: - Target-Action methods
    
    // MARK: - Notification handler methods
    
    // MARK: - Datasource methods
    // MARK: UIPickerViewDataSource methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return data.count
        
    }
    
    // MARK: - Delegate methods
    // MARK: UIPickerViewDelegate methods
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        
        return view.bounds.size.width
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        
        return 44.0
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
     
        println("Did select row \(row)")
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        let title = data[row].title
        
        return title
        
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        
        println(view)
        
        let rowData = data[row]
        let customView = CustomPickerRowView(frame: CGRectZero, rowData: rowData)
        
        return customView
        
    }


}


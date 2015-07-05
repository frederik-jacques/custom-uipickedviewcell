//
//  CustomPickerRowView.swift
//  CustomUIPickerCell
//
//  Created by Frederik Jacques on 05/07/15.
//  Copyright (c) 2015 Frederik Jacques. All rights reserved.
//

import UIKit
import PureLayout

class CustomPickerRowView: UIView {

    // MARK: - IBOutlets
    
    // MARK: - Properties
    let rowData:RowData
    
    var imageView:UIImageView!
    var label:UILabel!
    
    var didSetupConstraints:Bool = false
    
    // MARK: - Initializers methods
    init(frame: CGRect, rowData:RowData) {
        
        self.rowData = rowData
        
        super.init(frame: frame)
        
        backgroundColor = UIColor.purpleColor()
        
        self.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        createImageView()
        createLabel()
        
    }

    required init(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
        
    }
    
    // MARK: - Lifecycle methods
    override func updateConstraints() {
        
        if( !didSetupConstraints ) {
            
            self.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsZero)
            
            label.autoCenterInSuperview()
            
            imageView.autoConstrainAttribute(.Horizontal, toAttribute: .Horizontal, ofView: self)
            imageView.autoPinEdge(.Trailing, toEdge: .Leading, ofView: label, withOffset: -10)
            
        }
        
        super.updateConstraints()
        
    }
    
    // MARK: - Private methods
    private func createImageView(){
    
        imageView = UIImageView.newAutoLayoutView()
        imageView.image = UIImage(named: rowData.imageName)
        addSubview(imageView)
        
    }
    
    private func createLabel(){
    
        label = UILabel.newAutoLayoutView()
        label.backgroundColor = UIColor.redColor()
        label.text = rowData.title
        addSubview(label)
        
    }
    
    // MARK: - Public methods
    
    // MARK: - Getter & setter methods
    
    // MARK: - IBActions
    
    // MARK: - Target-Action methods
    
    // MARK: - Notification handler methods
    
    // MARK: - Datasource methods
    
    // MARK: - Delegate methods

}

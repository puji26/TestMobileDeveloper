//
//  BuahTableViewCell.swift
//  TestMobileIOSDeveloper
//
//  Created by Puji Wahono on 13/08/20.
//  Copyright © 2020 Puji Wahono. All rights reserved.
//

import UIKit

class BuahTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgBuah: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setup(viewModel:ItemList){
        imageView?.image = viewModel.image
        lblName.text = viewModel.name
    }
    
}

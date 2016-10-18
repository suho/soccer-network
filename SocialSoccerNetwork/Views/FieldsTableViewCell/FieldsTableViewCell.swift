//
//  FieldsTableViewCell.swift
//  SocialSoccerNetwork
//
//  Created by Mylo Ho on 10/14/16.
//  Copyright © 2016 HoVanSu. All rights reserved.
//

import UIKit

class FieldsTableViewCell: UITableViewCell {

    @IBOutlet weak var visibleView: UIView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var fieldNameLabel: UILabel!
    @IBOutlet weak var fieldAddressLabel: UILabel!
    @IBOutlet weak var fieldDistanceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

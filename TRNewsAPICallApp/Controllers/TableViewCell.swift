//
//  TableViewCell.swift
//  TRNewsAPICallApp
//
//  Created by Mahmut Senbek on 5.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet var newsSource: UILabel!
    
    @IBOutlet var newsLabel: UILabel!
    @IBOutlet var newsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

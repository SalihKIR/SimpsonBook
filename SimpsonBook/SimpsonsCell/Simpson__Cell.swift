//
//  Simpson__Cell.swift
//  SimpsonBook
//
//  Created by Salih KIR on 2.04.2022.
//

import UIKit

class Simpson__Cell: UITableViewCell {
    var simpson : [String] = []
    @IBOutlet weak var simplabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func simpsonset (simp : String) {
        simplabel.text = simp
    }
    
}

extension Simpson__Cell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nibName: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}

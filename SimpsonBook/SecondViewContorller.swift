//
//  SecondViewContorller.swift
//  SimpsonBook
//
//  Created by Salih KIR on 2.04.2022.
//

import UIKit

class SecondViewContorller: UIViewController {

    var simpsonimage: [UIImage] = []
    var simpsons: String = ""
    
    @IBOutlet weak var simpsonImage: UIImageView!
    @IBOutlet weak var SimpsonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //SimpsonLabel.text = simpsonimageName
        SimpsonLabel.text = simpsons
        setImage(image: simpsons)
        
    }
    
    func setImage(image: String) {
        simpsonImage.image = UIImage(named: image)
    }

}

//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Salih KIR on 2.04.2022.
//

import UIKit
 var Simpson = 5
class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    //let simpImage: [UIImage] = [UIImage(named: "Bart"),UIImage(named: "enda"),UIImage(named: "Homer"),UIImage(named: "Maggle"),UIImage(named: "Marge_Simpson")]
    
    let simpImageName: [String] = ["Bart","enda","Homer","Maggle","Marge_Simpson"]
    
    @IBOutlet weak var tableViewSimpson: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSimpson.delegate = self
        tableViewSimpson.dataSource = self
        tableViewSimpson.register(Simpson__Cell.nibName, forCellReuseIdentifier: Simpson__Cell.identifier)
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpImageName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let simpcell = tableView.dequeueReusableCell(withIdentifier: Simpson__Cell.identifier, for: indexPath) as! Simpson__Cell
        simpcell.sehirleriEntegre(simp: simpImageName[indexPath.row])
        return simpcell
            }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let check = SecondViewContorller.instantiate(storyboard: .check)
        navigationController?.pushViewController(check, animated: true)
        check.simpsons = simpImageName[indexPath.row]
        
    }
    @IBAction func TryButton(_ sender: Any) {
        let check = SecondViewContorller.instantiate(storyboard: .check)
        navigationController?.pushViewController(check, animated: true)
       // check.simpsonimage = simpImage
    }
}


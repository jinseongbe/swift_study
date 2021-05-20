//
//  ViewController.swift
//  practice
//
//  Created by Jin Sung Park on 2021/05/20.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var lblHello: UILabel!
  @IBOutlet var txtName: UITextField!
  
  @IBAction func btnSend(_ sender: Any) {
    
    lblHello.text = "Hello," + txtName.text!
  }
  
  @IBOutlet var imgTest: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
  }


}



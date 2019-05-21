//
//  ViewController.swift
//  W04D2
//
//  Created by Sam Meech-Ward on 2019-05-21.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

infix operator +++
extension Int {
  static func +++ (left: Int, right: Int) -> Int {
    return left*2+right;
  }
}

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  @IBOutlet weak var tableView: UITableView!
  var name: String?
  
//  var dogs: Array<String> = []
//  var dogs: [String] = []
  private var dogs = Stack<String>()
  private var ages = Stack<Int>()
  
  private let chair = Chair(numberOfLegs: 4, material: "Wood")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupUserDetails()

    var num = 2
//    +++num
    num = num +++ 4
    print("number \(num)")
//    2*"2"
    
    orderFood(item: ("Pepperoni Pizza", 3))
    
    dogs.push("Rover")
    dogs.push("Fluffy")
    ages.push(7)
    
    do {
      print(try dogs.pop())
      print(try dogs.pop())
      print(try dogs.pop())
    } catch {
      print(error)
    }
    
//    print(try! dogs.pop())
//    print(try! dogs.pop())
//    print(try! dogs.pop())
    
//    print(try? dogs.pop())
//    print(try? dogs.pop())
//    print(try? dogs.pop())
//
//    guard let dogName = try? dogs.pop else {
//      return
//    }
  }
  
  private func setupUserDetails() {
//    if let name = name {
//      label.text = name
//    }
//    guard let name = name else {
//      return
//    }
//
//    label.text = name
    
    // don't do it this way
//    if name != nil {
//      label.text = name!
//    }
    label.text = name ?? "User not logged in"
  }
  
  private func orderFood(item: (String, Int)) {
    switch item {
    case ("Pizza", 3):
      print("Large Pizza")
    case ("Pizza", 1...3):
      print("Any Pizza")
    case ("Pie", _):
      print("Pie with Any size")
    case (let food, _) where food.starts(with: "Pepper"):
      print("Peppery food 🍕")
    default:
      print("any food")
    }
    
    //    let value1 = "hello"
    //    let value2 = "world"
    //
    //    switch (value1, value2) {
    //    case <#pattern#>:
    //      <#code#>
    //    default:
    //      <#code#>
    //    }
  }
  

}

extension ViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
  
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
//    if (scrollView is UITableView) {
//      // it's the table view
//      let tableView = scrollView as! UITableView
//      print(tableView.numberOfSections)
//    }
    
//    self.view.subviews
    
    guard let tableView = scrollView as? UITableView else {
      return
    }
    print(tableView.numberOfSections)
  }
  
  
}

//
//  ColorTableViewController.swift
//  Rainbow
//
//  Created by Lambda_School_Loaner_167 on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
//    available throughout the scope of the class
//    var colors = ["red", "blue", "green", "yellow"]
    
//    This means the name color and the actual color red
    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
    MyColor(name: "Orange", color: .orange),
    MyColor(name: "Yellow", color: .yellow),
    MyColor(name: "Green", color: .green),
    MyColor(name: "Blue", color: .blue),
    MyColor(name: "Cyan", color: .cyan),
    MyColor(name: "Purple", color: .purple)]

    // MARK: - Table view data source
    
// How many sections in the Tableviews do you want
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
// How many rows do you want in this Tableview. Sections are indexed from 0
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//         the rows are the list of items you need to add to the tableview
        return colors.count
    }
// Method gets called once for every section in the tableviews, index path is an object that has properties .
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        This method tells the storyboard, that I want a new cell on this screen 
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        // Configure the cell...
        let myColor = colors[indexPath.row]
//        this will display the text in the text label. it will display the titles name
        cell.textLabel?.text = myColor.name
        
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
//    This method is called and the animation runs this method calls

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
        let colorDetailVC = segue.destination as? ColorDetailViewController else { return }
        
            colorDetailVC.cellColor = colors[indexPath.row]
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

//
//  ViewController.swift
//  SnapKitUsing
//
//  Created by Георгий Маркарян on 15.06.2022.
//

import UIKit
import SnapKit


class ViewController: UITableViewController {

    let kCellIdentifier = "CellIdentifier"
    let demos = ["Simple Layout", "Basic UIScrollView"]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SnapKit iOS Demos"

        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier)! as UITableViewCell

        cell.textLabel?.text = demos[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let viewController = SimpleLayoutViewController()
            navigationController?.pushViewController(viewController, animated: true)
        } else if indexPath.row == 1 {
            let viewController = BasicUIScrollViewController()
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}


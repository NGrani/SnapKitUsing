//
//  SimpleLayoutViewController.swift
//  SnapKitUsing
//
//  Created by Георгий Маркарян on 15.06.2022.
//

import UIKit

class SimpleLayoutViewController: UIViewController {

    var didSetupConstraints = false

    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()

    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        view.addSubview(blackView)
        view.addSubview(redView)
        view.addSubview(yellowView)
        view.addSubview(blueView)
        view.addSubview(greenView)

        view.setNeedsUpdateConstraints()
    }

    override func updateViewConstraints() {

        if (!didSetupConstraints) {

            redView.snp.makeConstraints { make in
                make.center.equalTo(view)
                make.size.equalTo(CGSize(width: 100, height: 100))
            }

            blueView.snp.makeConstraints { make in
                make.top.equalTo(redView.snp.bottom).offset(40.0)
                make.right.equalTo(redView.snp.left).offset(-20.0)
                make.size.equalTo(CGSize(width: 110, height: 110))
            }

            greenView.snp.makeConstraints { make in
                make.top.equalTo(redView.snp.bottom).offset(100.0)
                make.left.equalTo(redView.snp.right).offset(20.0)
                make.size.equalTo(CGSize(width: 200, height: 100))
            }

            blackView.snp.makeConstraints { make in
                make.bottom.equalTo(redView.snp.top).offset(-120.0)
                make.left.equalTo(redView.snp.right).offset(20.0)
                make.size.equalTo(CGSize(width: 50, height: 50))
            }

            yellowView.snp.makeConstraints { make in
                make.bottom.equalTo(redView.snp.top).offset(-10.0)
                make.right.equalTo(redView.snp.left).offset(-10.0)
                make.size.equalTo(CGSize(width: 100, height: 100))
            }

            didSetupConstraints = true
        }

        super.updateViewConstraints()
    }
}

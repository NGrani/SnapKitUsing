//
//  BasicViewController.swift
//  SnapKitUsing
//
//  Created by Георгий Маркарян on 15.06.2022.
//

import UIKit

class BasicUIScrollViewController: UIViewController {

    var didSetupConstraints = false

    let scrollView  = UIScrollView()
    let contentView = UIView()

    let label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemGray4
        label.numberOfLines = 0
        label.lineBreakMode = .byClipping
        label.textColor = .blue
        label.text = NSLocalizedString("Все возможно! Если мы найдем в себе силы взять ответственность за свой личныйчвыбор, мы сможем изменить свою жизнь.. В конце концов мы всегда получаем то, во что вкладываем свои душевные усилия. У всех нас есть возможность культивировать в себе эти силы, воспитывать их в своих детях и помочь обрести себя нашим близким. Позитивная психология основана на наших внутренних неисчерпаемых возможностях. В конце концов мы всегда получаем то, во что вкладываем душевные усилия. Если мы сосредоточены на проблемах – мы получаем проблемы. Если мы настроены на решения, то находим ответы на свои вопросы. Как только человек начинает жить с уверенностью в том, что все возможно – нужно лишь приложить усилия, – у него исчезает ощущение потолка. Я дал этому явлению новое слово – «поссибилизм» (от английского слова possible – осуществимый). Для меня это соединение двух человеческих качеств: умения мечтать и смелости осуществлять эти мечты. Постоянно двигаться к цели, пусть даже невидимыми миру, маленькими шагами ребенка...", comment: "")
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        view.addSubview(scrollView)

        contentView.backgroundColor = UIColor.systemGray6
        scrollView.addSubview(contentView)
        contentView.addSubview(label)

        view.setNeedsUpdateConstraints()
    }

    override func updateViewConstraints() {

        if (!didSetupConstraints) {

            scrollView.snp.makeConstraints { make in
                make.edges.equalTo(view).inset(UIEdgeInsets.zero)
            }

            contentView.snp.makeConstraints { make in
                make.edges.equalTo(scrollView).inset(UIEdgeInsets.zero)
                make.width.equalTo(scrollView)
            }

            label.snp.makeConstraints { make in
                make.top.equalTo(contentView).inset(10)
                make.leading.equalTo(contentView).inset(10)
                make.trailing.equalTo(contentView).inset(10)
                make.bottom.equalTo(contentView).inset(10)
            }

            didSetupConstraints = true
        }

        super.updateViewConstraints()
    }
}

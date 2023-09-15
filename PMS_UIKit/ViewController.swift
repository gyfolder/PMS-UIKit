//
//  ViewController.swift
//  PMS_UIKit
//
//  Created by 용용이 on 2023/09/15.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    /// MARK: ContentView
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15)
        view.textColor = .gray
        view.text = "글로벌한 대학 생활을 위한 첫 단계"
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        view.addSubview(contentView)
        contentView.addSubview(subTitleLabel)
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        subTitleLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(20)
        }
    }


}


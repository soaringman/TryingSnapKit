//
//  ViewController.swift
//  TryingSnapKit
//
//  Created by Алексей Гуляев on 07.06.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var myView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 8
        return view
    }()

    private func setupUI() {
        view.addSubview(myView)
        myView.addSubview(bottomView)
        
        myView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(100)
            make.top.bottom.equalToSuperview().inset(200)
        }
        
        bottomView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.bottom.equalToSuperview().inset(30)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

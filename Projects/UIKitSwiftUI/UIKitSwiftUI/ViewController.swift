//
//  ViewController.swift
//  UIKitSwiftUI
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let hostingViewController = UIHostingController(rootView: CapsuleButton(text: "Youhou", action: { [weak self] in
            self?.view.backgroundColor = .red
        }))

        let swiftUIView = hostingViewController.view
        if let swiftUIView {
            view.addSubview(swiftUIView)
            swiftUIView.translatesAutoresizingMaskIntoConstraints = false
            swiftUIView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            swiftUIView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    }
}


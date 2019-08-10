//
//  ViewController.swift
//  HelloWorld
//
//  Created by 孟昕欣 on 2019/8/10.
//  Copyright © 2019 Andy Meng. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var sayHelloButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func didClickSayHelloButton(_ sender: Any) {
        let alert = NSAlert();
        alert.alertStyle = NSAlert.Style.informational;
        alert.messageText = "ATourOfMacDev";
        alert.informativeText = "Hello World !";
        alert.addButton(withTitle: "OK");
//        alert.runModal();
        alert.beginSheetModal(for: view.window!, completionHandler: { res in
            print(res) // 按钮对应的 code 第一个是1000, 第二个 1001, 依次类推
        });
    }
    
}


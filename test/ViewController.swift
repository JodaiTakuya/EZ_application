//
//  ViewController.swift
//  test
//
//  Created by Jodai Takuya on 2019/01/21.
//  Copyright © 2019 城代拓哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var JDtitle: UILabel!
    @IBOutlet weak var Output: UILabel!
    @IBOutlet weak var Titleheader: UINavigationBar!
    let input = UITextField()
    var ideas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        input.frame = CGRect(x: 10, y: 450, width: UIScreen.main.bounds.size.width-20, height: 38)
        // プレースホルダを設定
        input.placeholder = "入力してください。"
        // キーボードタイプを指定
        input.keyboardType = .default
        // 枠線のスタイルを設定
        input.borderStyle = .roundedRect
        // 改行ボタンの種類を設定
        input.returnKeyType = .done
        // テキストを全消去するボタンを表示
        input.clearButtonMode = .always
        // UITextFieldを追加
        self.view.addSubview(input)
        // デリゲートを指定
        input.delegate = self
    }
    
    //storyboardの移動
    @IBAction func move2(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "second")
        self.present(second, animated: true, completion: nil)
    }
    
    @IBAction func touchButton(_ sender: Any) {
        Output.text = "ボタン押したやろ今"
    }
    @IBAction func resetButton(_ sender: Any) {
        Output.text = ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   // 改行ボタンを押した時の処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 配列ideasにtextfieldから取得した値を入れる
        ideas.append(input.text!)
        print("話題の数は、\(ideas.count)個です。")
        // TextFieldの中身をクリア
        textField.text = ""
        return true
    }
    
    // クリアボタンが押された時の処理
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Clear")
        return true
    }
    
    // テキストフィールドがフォーカスされた時の処理
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Start")
        return true
    }
    
    // テキストフィールドでの編集が終了する直前での処理
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("End")
        return true
    }
    
}


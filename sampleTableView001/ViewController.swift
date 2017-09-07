//
//  ViewController.swift
//  sampleTableView001
//
//  Created by 加藤諒 on 2017/09/06.
//  Copyright © 2017年 mirai. All rights reserved.
//

import UIKit


let lang:[String] = ["swift","java","jabascript","c","c++","ruby","python","go","php","html"]
//①プロトコルの設定(DetaSource,Delegate)
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
  @IBOutlet weak var myTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //④TableViewに指示を出すのが　　viewcontrollerだと設定する
    
    
    //Deligate ,Datasource
    
    //⑤tableviewにCellオブジェクトを追加し、identifierに cell という名前をつける！！
    
  }
  
  //②行数の決定
  func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  
  
  //③リストに表示する文字列を決定し、表示
  func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
    //文字を表示するセルの取得（セルの再利用）
      let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
      
      //表示したい文字の設定　IndexPath.rowが行番号を表す　
    
    cell.textLabel?.text = lang[indexPath.row] //indexpathはセルの番号！！
      
//      cell.textLabel?.text = "\(indexPath.row)行目"
    
      //文字を設定したセルを返す
      
      return cell
    
    
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


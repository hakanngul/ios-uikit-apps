//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Hakan Gül on 22.02.2025.
//

import UIKit

class AnasayfaVC: UIViewController {
  @IBOutlet weak var searchBar: UISearchBar!

  @IBOutlet weak var kisilerTableView: UITableView!

  var kisilerList = [Kisiler]()

  override func viewDidLoad() {
    super.viewDidLoad()
    // searchBar.delegate = self, AnasayfaVC sınıfının UISearchBarDelegate olaylarını dinlemesini sağlar.
    searchBar.delegate = self
    kisilerTableView.delegate = self  // self ler anasayfayı temsil ediyor
    kisilerTableView.dataSource = self  // self ler anasayfayı temsil ediyor

    dummyData()
  }

  override func viewWillAppear(_ animated: Bool) {

  }

  func dummyData() {

    let kisi1 = Kisiler(id: 1, ad: "Hakan", telefon: "05317328099")
    let kisi2 = Kisiler(id: 2, ad: "Ali", telefon: "05317328098")
    let kisi3 = Kisiler(id: 3, ad: "Veli", telefon: "05317328097")
    let kisi4 = Kisiler(id: 4, ad: "Aysenur", telefon: "05317328096")
    let kisi5 = Kisiler(id: 5, ad: "Mehmet", telefon: "05317328095")

    kisilerList.append(kisi1)
    kisilerList.append(kisi2)
    kisilerList.append(kisi3)
    kisilerList.append(kisi4)
    kisilerList.append(kisi5)
  }

  @IBAction func btnDetay(_ sender: Any) {
    let kisi = Kisiler(id: 1, ad: "Hakan", telefon: "05317328099")
    performSegue(withIdentifier: "toDetay", sender: kisi)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toDetay" {
      if let kisi = sender as? Kisiler {
        let gidilecekVC = segue.destination as! KisiDetayVC
        gidilecekVC.kisi = kisi
      }
    }
  }

}

extension AnasayfaVC: UISearchBarDelegate {
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    print("Kişi Ara : \(searchText)")
  }
}

extension AnasayfaVC: UITableViewDelegate, UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return kisilerList.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let kisi = kisilerList[indexPath.row]
    let hucre =
      tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucreTableViewCell

    hucre.labelKisiAd.text = kisi.ad
    hucre.labelKisiTel.text = kisi.telefon

    return hucre
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let kisi = self.getKisi(index: indexPath.row)
    performSegue(withIdentifier: "toDetay", sender: kisi)
  }

  func tableView(
    _ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath
  ) -> UISwipeActionsConfiguration? {
    let silAction = UIContextualAction(style: .destructive, title: "Sil") { (action, view, completionHandler) in

      let kisi = self.getKisi(index: indexPath.row)

      let alert = UIAlertController(
        title: "Silme İşlemi", message: "\(kisi.ad!) silinsin mi?", preferredStyle: .alert)

      let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { _ in
        completionHandler(false)  // Silme işlemi iptal edildi
      }
      alert.addAction(iptalAction)
      let silAction = UIAlertAction(title: "Sil", style: .destructive) { action in
        print("Kişi Silindi: \(kisi.id!)")

        self.kisilerList.remove(at: indexPath.row)  // Listeden kişiyi kaldır
        tableView.deleteRows(at: [indexPath], with: .fade)  // UI güncelle

        if self.kisilerList.isEmpty {
          tableView.reloadData()  // Liste boşsa table'ı güncelle
        }

        completionHandler(true)  // İşlemin tamamlandığını bildir
      }

      alert.addAction(silAction)

      self.present(alert, animated: true)

    }
    return UISwipeActionsConfiguration(actions: [silAction])
  }

  func getKisi(index: Int) -> Kisiler {
    if index >= 0 && index < kisilerList.count {
      return kisilerList[index]
    } else {
      fatalError("Geçersiz indeks erişimi!")
    }
  }
}

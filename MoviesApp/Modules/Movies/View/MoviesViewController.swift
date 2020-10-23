//
//  NewViewController.swift
//  MoviesApp
//
//  Created by A on 21/10/2020.
//  Copyright © 2020 amr zayed. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MoviesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewModel = MoviesViewModel()
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        viewModel.fetchMoviesData()
        // Do any additional setup after loading the view.
    }
    
    func setupCollectionView(){
        
//        collectionView.delegate = self
        collectionView.rx.setDataSource(self)
//        viewModel.moviesModelObservable.bind(to: collectionView.rx.items(cellIdentifier: "", cellType: MoviesCell.self)){_,_,_ in
//
//        }
        
        viewModel.moviesModelObservable.bind(to: collectionView.rx.items(cellIdentifier: String(describing: MoviesCell.self), cellType: MoviesCell.self)){[weak self] index, element, cell in

        }.disposed(by: disposeBag)
        
        collectionView.registerCell(cellClass: MoviesCell.self)
//        viewModel.branchesModelObservable.bind(to: collectionView.rx.items(cellIdentifier: String(describing: MoviesCell.self), cellType: MoviesCell.self)){_,_,_ in
//
//        }.disposed(by: disposeBag)
        
//        collectionView.dataSource = self
        
//        viewModel.moviesModelObservable.bind(to: collectionView.rx.items(cellIdentifier: "MoviesCell", cellType: MoviesCell.self)){_,_,_ in
//
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MoviesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(indexPath: indexPath) as MoviesCell
        return cell
    }
    
    
}

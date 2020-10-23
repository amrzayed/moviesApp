//
//  MoviesViewModel.swift
//  MoviesApp
//
//  Created by A on 20/10/2020.
//  Copyright © 2020 amr zayed. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

//class MoviesViewModel{
//
//    private var moviesModelSubject = PublishSubject<MoviesModel>()
//
//    var moviesModelObservable: Observable<MoviesModel>{
//        return moviesModelSubject
//    }
//
//    func getMoviesData(){
//        NetworkClient.performRequest(MoviesModel.self, url: Constants.popular) { (result) in
//            switch result{
//            case .success(let item):
//                print("item ::::: ", item)
////                self.moviesModelSubject.onNext(item)
//                self.moviesModelSubject.onNext(item)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//
//    }
//}

class MoviesViewModel{
    private var moviesModelSubject = PublishSubject<[MoviesResults]>()
    var moviesModelObservable: Observable<[MoviesResults]> {
        return moviesModelSubject
    }
    
    func fetchMoviesData(){
        NetworkClient.performRequest(MoviesModel.self, url: Constants.popular) { result in
            switch result{
            case .success(let item):
                if let result = item.results{
                    self.moviesModelSubject.onNext(result)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
        
}

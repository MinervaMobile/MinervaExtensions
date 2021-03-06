//
// Copyright © 2020 Optimize Fitness Inc.
// Licensed under the MIT license
// https://github.com/OptimizeFitness/Minerva/blob/master/LICENSE
//

import Foundation
import MinervaCoordinator
import UIKit

open class CollectionViewController: BaseViewController {
  public var hideNavigationBar: Bool = false
  public var backgroundImage: UIImage?
  public var backgroundColor: UIColor = .white

  // MARK: - UIViewController

  override open func viewDidLoad() {
    super.viewDidLoad()
    setupViewsAndConstraints()
  }

  override public func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(hideNavigationBar, animated: animated)
    if backgroundImage != nil {
      collectionView.backgroundColor = nil
    }
  }

  // MARK: - Private

  private func setupViewsAndConstraints() {
    if let backgroundImage = backgroundImage {
      let imageView = UIImageView(image: backgroundImage)
      imageView.contentMode = .scaleAspectFill
      view.addSubview(imageView)
      imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
      imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
      imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
      collectionView.backgroundColor = nil
    } else {
      collectionView.backgroundColor = backgroundColor
    }
    view.addSubview(collectionView)
    collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    view.subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
  }
}

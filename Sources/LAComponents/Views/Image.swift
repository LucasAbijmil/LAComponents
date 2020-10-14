//
//
//  Copyright (c) 2020 Lucas Abijmil.

import SwiftUI

#if !os(macOS)
public extension Image {

  /// Displays an ``Image`` downloaded synchronously from a ``URL``. If the download fails, the ``Image`` displays a placeholder.
  ///
  /// The placeholder must be an Asset.
  ///
  /// - Parameters:
  ///     - url: The ``URL`` of the remote image.
  ///     - placeholder: The ``Image`` displayed if the download failed.
  init(for url: URL, with placeholder: String) {
    if let imageEncoded = try? Data(contentsOf: url),
       let image = UIImage(data: imageEncoded) {
      self.init(uiImage: image)
    } else {
      self.init(placeholder)
    }
  }

  /// Displays an ``Image`` downloaded synchronously from a ``URL``. If the download fails, the init fails.
  ///
  /// - Parameters:
  ///     - url: The ``URL`` of the remote image.
  init?(for url: URL) {
    guard let imageEncoded = try? Data(contentsOf: url),
          let image = UIImage(data: imageEncoded) else { return nil }
    self.init(uiImage: image)
  }
}
#endif

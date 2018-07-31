// Copyright © 2018 INLOOPX. All rights reserved.

import Foundation
import Photos

/// Group of methods informing what image picker is currently doing

public protocol ImagePickerControllerDelegate: class {
    /// Called when user taps on an action item, index is either 0 or 1 depending which was tapped
    func imagePicker(controller: ImagePickerController, didSelectActionItemAt index: Int)

    /// Called when user select an asset.
    func imagePicker(controller: ImagePickerController, didSelect asset: PHAsset)

    /// Called when user unselect previously selected asset.
    func imagePicker(controller: ImagePickerController, didDeselect asset: PHAsset)

    /// Called when user takes new photo.
    func imagePicker(controller: ImagePickerController, didTake image: UIImage)
    
    /// Called when user takes new live photo.
    func imagePicker(controller: ImagePickerController, didTake livePhoto: UIImage, videoUrl: URL)
    
    /// Called when user captures new video.
    func imagePicker(controller: ImagePickerController, didCaptureVideo url: URL)

    /// Called right before an action item collection view cell is displayed. Use this method
    /// to configure your cell.
    func imagePicker(controller: ImagePickerController, willDisplayActionItem cell: UICollectionViewCell, at index: Int)

    /// Called right before an asset item collection view cell is displayed. Use this method
    /// to configure your cell based on asset media type, subtype, etc.
    func imagePicker(controller: ImagePickerController, willDisplayAssetItem cell: ImagePickerAssetCell, asset: PHAsset)
    
    /// Called after the lift animation has completed to signal the start of a drag session.
    /// This call will always be balanced with a corresponding call to dragSessionDidEnd
    @available(iOS 11.0, *)
    func imagePicker(controller: ImagePickerController, dragSessionWillBegin session: UIDragSession)
    
    /// Called to signal the end of the drag session.
    @available(iOS 11.0, *)
    func imagePicker(controller: ImagePickerController, dragSessionDidEnd session: UIDragSession)
}

extension ImagePickerControllerDelegate {
    public func imagePicker(controller: ImagePickerController, didSelectActionItemAt index: Int) {}
    public func imagePicker(controller: ImagePickerController, didSelect asset: PHAsset) {}
    public func imagePicker(controller: ImagePickerController, didUnselect asset: PHAsset) {}
    public func imagePicker(controller: ImagePickerController, didTake image: UIImage) {}
    public func imagePicker(controller: ImagePickerController, didTake livePhoto: UIImage, videoUrl: URL) {}
    public func imagePicker(controller: ImagePickerController, didCaptureVideo url: URL) {}
    public func imagePicker(controller: ImagePickerController, willDisplayActionItem cell: UICollectionViewCell, at index: Int) {}
    public func imagePicker(controller: ImagePickerController, willDisplayAssetItem cell: ImagePickerAssetCell, asset: PHAsset) {}
    @available(iOS 11.0, *)
    public func imagePicker(controller: ImagePickerController, dragSessionWillBegin session: UIDragSession) {}
    @available(iOS 11.0, *)
    public func imagePicker(controller: ImagePickerController, dragSessionDidEnd session: UIDragSession) {}
}

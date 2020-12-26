//
//  CaptionViewController.swift
//  TikTok
//
//  Created by Afraz Siddiqui on 12/26/20.
//

import ProgressHUD
import UIKit

class CaptionViewController: UIViewController {

    let videoURL: URL

    init(videoURL: URL) {
        self.videoURL = videoURL
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add Caption"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Post", style: .done, target: self, action: #selector(didTapPost))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    @objc private func didTapPost() {
        // Generate a video name that is unique based on id
        let newVideoName = StorageManager.shared.generateVideoName()

        ProgressHUD.show("Posting")

        // Upload video
        StorageManager.shared.uploadVideo(from: videoURL, fileName: newVideoName) { [weak self] success in
            DispatchQueue.main.async {
                if success {
                    // Update database
                    DatabaseManager.shared.insertPost(fileName: newVideoName) { datebaseUpdated in
                        if datebaseUpdated {
                            HapticsManager.shared.vibrate(for: .success)
                            ProgressHUD.dismiss()
                            // Reset camera and switch to feed
                            self?.navigationController?.popToRootViewController(animated: true)
                            self?.tabBarController?.selectedIndex = 0
                            self?.tabBarController?.tabBar.isHidden = false
                        }
                        else {
                            HapticsManager.shared.vibrate(for: .error)
                            ProgressHUD.dismiss()
                            let alert = UIAlertController(title: "Woops",
                                                          message: "We were unable to upload your video. Please try again.",
                                                          preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                            self?.present(alert, animated: true)
                        }
                    }
                }
                else {
                    HapticsManager.shared.vibrate(for: .error)
                    ProgressHUD.dismiss()
                    let alert = UIAlertController(title: "Woops",
                                                  message: "We were unable to upload your video. Please try again.",
                                                  preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                    self?.present(alert, animated: true)
                }
            }
        }
    }
}

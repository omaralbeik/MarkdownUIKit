//
//  UIExtensions.swift
//  MarkdownUIKit
//
//  Created by Omar Albeik on 11/01/2017.
//  Copyright © 2017 Omar Albeik. All rights reserved.
//

import UIKit

extension UILabel {
	var markdownText: String? {
		set {
			guard let text = newValue else {
				return
			}
			let markdown = SwiftyMarkdown(string: text).attributedString()
			attributedText = markdown
		}
		get {
			return self.markdownText
		}
	}
}


extension UIButton {
	func setTitle(_ title: String?, for state: UIControlState) {
		guard let text = title else {
			return
		}
		let markdown = SwiftyMarkdown(string: text).attributedString()
		setAttributedTitle(markdown, for: state)
	}
}


extension UITextView {
	var markdownText: String? {
		set {
			guard let text = newValue else {
				return
			}
			let markdown = SwiftyMarkdown(string: text).attributedString()
			attributedText = markdown
		}
		get {
			return self.markdownText
		}
	}
}


extension UITextField {
	var markdownText: String? {
		set {
			guard let text = newValue else {
				return
			}
			let markdown = SwiftyMarkdown(string: text).attributedString()
			attributedText = markdown
		}
		get {
			return self.markdownText
		}
	}
	
	var markdownPlaceholder: String? {
		set {
			guard let text = newValue else {
				return
			}
			let markdown = SwiftyMarkdown(string: text).attributedString()
			attributedPlaceholder = markdown
		}
		get {
			return self.markdownPlaceholder
		}
	}
}


extension UISegmentedControl {
	
	func setTitleMarkdownText(_ text: String?, for state: UIControlState) {
		guard let aText = text else {
			return
		}
		let markdown = SwiftyMarkdown(string: aText).attributedString()
		let attrs = markdown.attributes(at: 0, longestEffectiveRange: nil, in: NSMakeRange(0, markdown.length))
		setTitleTextAttributes(attrs, for: state)
	}
	
}

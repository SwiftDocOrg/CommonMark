/// An inline content element.
public protocol Inline {}

// MARK: -

extension Text: Inline {}
extension Strong: Inline {}
extension Emphasis: Inline {}
extension Link: Inline {}
extension Image: Inline {}
extension Code: Inline {}
extension RawHTML: Inline {}
extension SoftLineBreak: Inline {}
extension HardLineBreak: Inline {}

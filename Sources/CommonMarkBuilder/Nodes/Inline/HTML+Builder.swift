import CommonMark

extension RawHTML {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }
}

import CommonMark

extension Text {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }
}

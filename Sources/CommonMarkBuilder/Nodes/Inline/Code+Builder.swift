import CommonMark

extension Code {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }
}

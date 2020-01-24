import CommonMark

extension CodeBlock {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }

    public convenience init(_ fenceInfo: String, @StringBuilder _ builder: () -> String) {
        self.init(literal: builder(), fenceInfo: fenceInfo)
    }
}

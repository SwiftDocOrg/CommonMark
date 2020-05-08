import CommonMark

extension CodeBlock {
    public convenience init(_ fenceInfo: String? = nil, @StringBuilder _ builder: () -> String) {
        self.init(literal: builder(), fenceInfo: fenceInfo)
    }
}

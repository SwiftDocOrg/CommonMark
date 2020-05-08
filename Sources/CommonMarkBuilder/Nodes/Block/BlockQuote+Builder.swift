import CommonMark

extension BlockQuote {
    public convenience init(@CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue)
    }
}

import CommonMark

extension Emphasis {
    public convenience init(@StringBuilder _ builder: () -> String) {
        self.init(text: builder())
    }

    public convenience init(@CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(children: builder().inlineValue)
    }
}

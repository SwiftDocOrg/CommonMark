import CommonMark

extension Link {
    public convenience init(urlString: String?, title: String?, @CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(urlString: urlString, title: title, children: builder().inlineValue)
    }
}

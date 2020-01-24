import CommonMark

extension Strong {
    public convenience init(_ closure: () -> String) {
        self.init(text: closure())
    }

    public convenience init(@CommonMarkBuilder _ builder: () -> InlineConvertible) {
       self.init(children: builder().inlineValue)
   }
}

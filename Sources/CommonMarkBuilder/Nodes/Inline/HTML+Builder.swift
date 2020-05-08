import CommonMark

extension RawHTML {
    public convenience init(@StringBuilder _ builder: () -> String) {
        self.init(literal: builder())
    }
}

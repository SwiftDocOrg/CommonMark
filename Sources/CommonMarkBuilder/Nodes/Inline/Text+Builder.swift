import CommonMark

extension Text {
    public convenience init(@StringBuilder _ builder: () -> String) {
        self.init(literal: builder())
    }
}

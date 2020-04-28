public protocol Visitable {
    func accept<T: Visitor>(visitor: T)
}

// MARK: - Document

extension Document: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(document: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

// MARK: - Container Blocks

extension BlockQuote: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(blockQuote: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension List: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(list: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension List.Item: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(listItem: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

// MARK: - Leaf Blocks

extension Heading: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(heading: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension Paragraph: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(paragraph: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension HTMLBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(htmlBlock: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension CodeBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(codeBlock: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension ThematicBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(thematicBreak: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

// MARK: - Inline

extension Text: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(text: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

extension Strong: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(strong: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension Emphasis: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(emphasis: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension Link: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(link: self) == .visitChildren else {
            return
        }
        self.walkVisitableChildren(with: visitor)
    }
}

extension Image: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(image: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

extension Code: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(code: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

extension RawHTML: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(rawHTML: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

extension SoftLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(softLineBreak: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

extension HardLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        guard visitor.visit(hardLineBreak: self) == .visitChildren else {
            return
        }
        // type has no visitable children for now
    }
}

// MARK: - Convenience Helpers

extension ContainerOfBlocks {
    internal var visitableChildren: AnyCollection<Visitable & Block & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Block & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension ContainerOfInlineElements {
    internal var visitableChildren: AnyCollection<Visitable & Inline & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Inline & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension List {
    internal var visitableChildren: AnyCollection<Visitable & List.Item> {
        return AnyCollection(self.children)
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension List.Item {
    internal var visitableChildren: AnyCollection<Visitable & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecFencedCodeBlocksTests: XCTestCase {
    func testExample89() throws {
        let markdown = #######"""
        ```
        <
         >
        ```

        """#######

        let html = #######"""
        <pre><code>&lt;
         &gt;
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample90() throws {
        let markdown = #######"""
        ~~~
        <
         >
        ~~~

        """#######

        let html = #######"""
        <pre><code>&lt;
         &gt;
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample91() throws {
        let markdown = #######"""
        ``
        foo
        ``

        """#######

        let html = #######"""
        <p><code>foo</code></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample92() throws {
        let markdown = #######"""
        ```
        aaa
        ~~~
        ```

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample93() throws {
        let markdown = #######"""
        ~~~
        aaa
        ```
        ~~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample94() throws {
        let markdown = #######"""
        ````
        aaa
        ```
        ``````

        """#######

        let html = #######"""
        <pre><code>aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample95() throws {
        let markdown = #######"""
        ~~~~
        aaa
        ~~~
        ~~~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample96() throws {
        let markdown = #######"""
        ```

        """#######

        let html = #######"""
        <pre><code></code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample97() throws {
        let markdown = #######"""
        `````
        
        ```
        aaa

        """#######

        let html = #######"""
        <pre><code>
        ```
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample98() throws {
        let markdown = #######"""
        > ```
        > aaa
        
        bbb

        """#######

        let html = #######"""
        <blockquote>
        <pre><code>aaa
        </code></pre>
        </blockquote>
        <p>bbb</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample99() throws {
        let markdown = #######"""
        ```
        
          
        ```

        """#######

        let html = #######"""
        <pre><code>
          
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample100() throws {
        let markdown = #######"""
        ```
        ```

        """#######

        let html = #######"""
        <pre><code></code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample101() throws {
        let markdown = #######"""
         ```
         aaa
        aaa
        ```

        """#######

        let html = #######"""
        <pre><code>aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample102() throws {
        let markdown = #######"""
          ```
        aaa
          aaa
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample103() throws {
        let markdown = #######"""
           ```
           aaa
            aaa
          aaa
           ```

        """#######

        let html = #######"""
        <pre><code>aaa
         aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample104() throws {
        let markdown = #######"""
            ```
            aaa
            ```

        """#######

        let html = #######"""
        <pre><code>```
        aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample105() throws {
        let markdown = #######"""
        ```
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample106() throws {
        let markdown = #######"""
           ```
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample107() throws {
        let markdown = #######"""
        ```
        aaa
            ```

        """#######

        let html = #######"""
        <pre><code>aaa
            ```
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample108() throws {
        let markdown = #######"""
        ``` ```
        aaa

        """#######

        let html = #######"""
        <p><code> </code>
        aaa</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample109() throws {
        let markdown = #######"""
        ~~~~~~
        aaa
        ~~~ ~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~ ~~
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample110() throws {
        let markdown = #######"""
        foo
        ```
        bar
        ```
        baz

        """#######

        let html = #######"""
        <p>foo</p>
        <pre><code>bar
        </code></pre>
        <p>baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample111() throws {
        let markdown = #######"""
        foo
        ---
        ~~~
        bar
        ~~~
        # baz

        """#######

        let html = #######"""
        <h2>foo</h2>
        <pre><code>bar
        </code></pre>
        <h1>baz</h1>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample112() throws {
        let markdown = #######"""
        ```ruby
        def foo(x)
          return 3
        end
        ```

        """#######

        let html = #######"""
        <pre><code class="language-ruby">def foo(x)
          return 3
        end
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample113() throws {
        let markdown = #######"""
        ~~~~    ruby startline=3 $%@#$
        def foo(x)
          return 3
        end
        ~~~~~~~

        """#######

        let html = #######"""
        <pre><code class="language-ruby">def foo(x)
          return 3
        end
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample114() throws {
        let markdown = #######"""
        ````;
        ````

        """#######

        let html = #######"""
        <pre><code class="language-;"></code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample115() throws {
        let markdown = #######"""
        ``` aa ```
        foo

        """#######

        let html = #######"""
        <p><code>aa</code>
        foo</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample116() throws {
        let markdown = #######"""
        ~~~ aa ``` ~~~
        foo
        ~~~

        """#######

        let html = #######"""
        <pre><code class="language-aa">foo
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample117() throws {
        let markdown = #######"""
        ```
        ``` aaa
        ```

        """#######

        let html = #######"""
        <pre><code>``` aaa
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample89", testExample89),
        ("testExample90", testExample90),
        ("testExample91", testExample91),
        ("testExample92", testExample92),
        ("testExample93", testExample93),
        ("testExample94", testExample94),
        ("testExample95", testExample95),
        ("testExample96", testExample96),
        ("testExample97", testExample97),
        ("testExample98", testExample98),
        ("testExample99", testExample99),
        ("testExample100", testExample100),
        ("testExample101", testExample101),
        ("testExample102", testExample102),
        ("testExample103", testExample103),
        ("testExample104", testExample104),
        ("testExample105", testExample105),
        ("testExample106", testExample106),
        ("testExample107", testExample107),
        ("testExample108", testExample108),
        ("testExample109", testExample109),
        ("testExample110", testExample110),
        ("testExample111", testExample111),
        ("testExample112", testExample112),
        ("testExample113", testExample113),
        ("testExample114", testExample114),
        ("testExample115", testExample115),
        ("testExample116", testExample116),
        ("testExample117", testExample117),
    ]
}

// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecHtmlBlocksTests: XCTestCase {
    func testExample118() throws {
        let markdown = #######"""
        <table><tr><td>
        <pre>
        **Hello**,
        
        _world_.
        </pre>
        </td></tr></table>

        """#######

        let html = #######"""
        <table><tr><td>
        <pre>
        **Hello**,
        <p><em>world</em>.
        </pre></p>
        </td></tr></table>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample119() throws {
        let markdown = #######"""
        <table>
          <tr>
            <td>
                   hi
            </td>
          </tr>
        </table>
        
        okay.

        """#######

        let html = #######"""
        <table>
          <tr>
            <td>
                   hi
            </td>
          </tr>
        </table>
        <p>okay.</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample120() throws {
        let markdown = #######"""
         <div>
          *hello*
                 <foo><a>

        """#######

        let html = #######"""
         <div>
          *hello*
                 <foo><a>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample121() throws {
        let markdown = #######"""
        </div>
        *foo*

        """#######

        let html = #######"""
        </div>
        *foo*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample122() throws {
        let markdown = #######"""
        <DIV CLASS="foo">
        
        *Markdown*
        
        </DIV>

        """#######

        let html = #######"""
        <DIV CLASS="foo">
        <p><em>Markdown</em></p>
        </DIV>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample123() throws {
        let markdown = #######"""
        <div id="foo"
          class="bar">
        </div>

        """#######

        let html = #######"""
        <div id="foo"
          class="bar">
        </div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample124() throws {
        let markdown = #######"""
        <div id="foo" class="bar
          baz">
        </div>

        """#######

        let html = #######"""
        <div id="foo" class="bar
          baz">
        </div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample125() throws {
        let markdown = #######"""
        <div>
        *foo*
        
        *bar*

        """#######

        let html = #######"""
        <div>
        *foo*
        <p><em>bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample126() throws {
        let markdown = #######"""
        <div id="foo"
        *hi*

        """#######

        let html = #######"""
        <div id="foo"
        *hi*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample127() throws {
        let markdown = #######"""
        <div class
        foo

        """#######

        let html = #######"""
        <div class
        foo

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample128() throws {
        let markdown = #######"""
        <div *???-&&&-<---
        *foo*

        """#######

        let html = #######"""
        <div *???-&&&-<---
        *foo*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample129() throws {
        let markdown = #######"""
        <div><a href="bar">*foo*</a></div>

        """#######

        let html = #######"""
        <div><a href="bar">*foo*</a></div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample130() throws {
        let markdown = #######"""
        <table><tr><td>
        foo
        </td></tr></table>

        """#######

        let html = #######"""
        <table><tr><td>
        foo
        </td></tr></table>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample131() throws {
        let markdown = #######"""
        <div></div>
        ``` c
        int x = 33;
        ```

        """#######

        let html = #######"""
        <div></div>
        ``` c
        int x = 33;
        ```

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample132() throws {
        let markdown = #######"""
        <a href="foo">
        *bar*
        </a>

        """#######

        let html = #######"""
        <a href="foo">
        *bar*
        </a>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample133() throws {
        let markdown = #######"""
        <Warning>
        *bar*
        </Warning>

        """#######

        let html = #######"""
        <Warning>
        *bar*
        </Warning>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample134() throws {
        let markdown = #######"""
        <i class="foo">
        *bar*
        </i>

        """#######

        let html = #######"""
        <i class="foo">
        *bar*
        </i>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample135() throws {
        let markdown = #######"""
        </ins>
        *bar*

        """#######

        let html = #######"""
        </ins>
        *bar*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample136() throws {
        let markdown = #######"""
        <del>
        *foo*
        </del>

        """#######

        let html = #######"""
        <del>
        *foo*
        </del>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample137() throws {
        let markdown = #######"""
        <del>
        
        *foo*
        
        </del>

        """#######

        let html = #######"""
        <del>
        <p><em>foo</em></p>
        </del>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample138() throws {
        let markdown = #######"""
        <del>*foo*</del>

        """#######

        let html = #######"""
        <p><del><em>foo</em></del></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample139() throws {
        let markdown = #######"""
        <pre language="haskell"><code>
        import Text.HTML.TagSoup
        
        main :: IO ()
        main = print $ parseTags tags
        </code></pre>
        okay

        """#######

        let html = #######"""
        <pre language="haskell"><code>
        import Text.HTML.TagSoup
        
        main :: IO ()
        main = print $ parseTags tags
        </code></pre>
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample140() throws {
        let markdown = #######"""
        <script type="text/javascript">
        // JavaScript example
        
        document.getElementById("demo").innerHTML = "Hello JavaScript!";
        </script>
        okay

        """#######

        let html = #######"""
        <script type="text/javascript">
        // JavaScript example
        
        document.getElementById("demo").innerHTML = "Hello JavaScript!";
        </script>
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample141() throws {
        let markdown = #######"""
        <style
          type="text/css">
        h1 {color:red;}
        
        p {color:blue;}
        </style>
        okay

        """#######

        let html = #######"""
        <style
          type="text/css">
        h1 {color:red;}
        
        p {color:blue;}
        </style>
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample142() throws {
        let markdown = #######"""
        <style
          type="text/css">
        
        foo

        """#######

        let html = #######"""
        <style
          type="text/css">
        
        foo

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample143() throws {
        let markdown = #######"""
        > <div>
        > foo
        
        bar

        """#######

        let html = #######"""
        <blockquote>
        <div>
        foo
        </blockquote>
        <p>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample144() throws {
        let markdown = #######"""
        - <div>
        - foo

        """#######

        let html = #######"""
        <ul>
        <li>
        <div>
        </li>
        <li>foo</li>
        </ul>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample145() throws {
        let markdown = #######"""
        <style>p{color:red;}</style>
        *foo*

        """#######

        let html = #######"""
        <style>p{color:red;}</style>
        <p><em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample146() throws {
        let markdown = #######"""
        <!-- foo -->*bar*
        *baz*

        """#######

        let html = #######"""
        <!-- foo -->*bar*
        <p><em>baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample147() throws {
        let markdown = #######"""
        <script>
        foo
        </script>1. *bar*

        """#######

        let html = #######"""
        <script>
        foo
        </script>1. *bar*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample148() throws {
        let markdown = #######"""
        <!-- Foo
        
        bar
           baz -->
        okay

        """#######

        let html = #######"""
        <!-- Foo
        
        bar
           baz -->
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample149() throws {
        let markdown = #######"""
        <?php
        
          echo '>';
        
        ?>
        okay

        """#######

        let html = #######"""
        <?php
        
          echo '>';
        
        ?>
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample150() throws {
        let markdown = #######"""
        <!DOCTYPE html>

        """#######

        let html = #######"""
        <!DOCTYPE html>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample151() throws {
        let markdown = #######"""
        <![CDATA[
        function matchwo(a,b)
        {
          if (a < b && a < 0) then {
            return 1;
        
          } else {
        
            return 0;
          }
        }
        ]]>
        okay

        """#######

        let html = #######"""
        <![CDATA[
        function matchwo(a,b)
        {
          if (a < b && a < 0) then {
            return 1;
        
          } else {
        
            return 0;
          }
        }
        ]]>
        <p>okay</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample152() throws {
        let markdown = #######"""
          <!-- foo -->
        
            <!-- foo -->

        """#######

        let html = #######"""
          <!-- foo -->
        <pre><code>&lt;!-- foo --&gt;
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample153() throws {
        let markdown = #######"""
          <div>
        
            <div>

        """#######

        let html = #######"""
          <div>
        <pre><code>&lt;div&gt;
        </code></pre>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample154() throws {
        let markdown = #######"""
        Foo
        <div>
        bar
        </div>

        """#######

        let html = #######"""
        <p>Foo</p>
        <div>
        bar
        </div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample155() throws {
        let markdown = #######"""
        <div>
        bar
        </div>
        *foo*

        """#######

        let html = #######"""
        <div>
        bar
        </div>
        *foo*

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample156() throws {
        let markdown = #######"""
        Foo
        <a href="bar">
        baz

        """#######

        let html = #######"""
        <p>Foo
        <a href="bar">
        baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample157() throws {
        let markdown = #######"""
        <div>
        
        *Emphasized* text.
        
        </div>

        """#######

        let html = #######"""
        <div>
        <p><em>Emphasized</em> text.</p>
        </div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample158() throws {
        let markdown = #######"""
        <div>
        *Emphasized* text.
        </div>

        """#######

        let html = #######"""
        <div>
        *Emphasized* text.
        </div>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample159() throws {
        let markdown = #######"""
        <table>
        
        <tr>
        
        <td>
        Hi
        </td>
        
        </tr>
        
        </table>

        """#######

        let html = #######"""
        <table>
        <tr>
        <td>
        Hi
        </td>
        </tr>
        </table>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample160() throws {
        let markdown = #######"""
        <table>
        
          <tr>
        
            <td>
              Hi
            </td>
        
          </tr>
        
        </table>

        """#######

        let html = #######"""
        <table>
          <tr>
        <pre><code>&lt;td&gt;
          Hi
        &lt;/td&gt;
        </code></pre>
          </tr>
        </table>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    static var allTests = [
        ("testExample118", testExample118),
        ("testExample119", testExample119),
        ("testExample120", testExample120),
        ("testExample121", testExample121),
        ("testExample122", testExample122),
        ("testExample123", testExample123),
        ("testExample124", testExample124),
        ("testExample125", testExample125),
        ("testExample126", testExample126),
        ("testExample127", testExample127),
        ("testExample128", testExample128),
        ("testExample129", testExample129),
        ("testExample130", testExample130),
        ("testExample131", testExample131),
        ("testExample132", testExample132),
        ("testExample133", testExample133),
        ("testExample134", testExample134),
        ("testExample135", testExample135),
        ("testExample136", testExample136),
        ("testExample137", testExample137),
        ("testExample138", testExample138),
        ("testExample139", testExample139),
        ("testExample140", testExample140),
        ("testExample141", testExample141),
        ("testExample142", testExample142),
        ("testExample143", testExample143),
        ("testExample144", testExample144),
        ("testExample145", testExample145),
        ("testExample146", testExample146),
        ("testExample147", testExample147),
        ("testExample148", testExample148),
        ("testExample149", testExample149),
        ("testExample150", testExample150),
        ("testExample151", testExample151),
        ("testExample152", testExample152),
        ("testExample153", testExample153),
        ("testExample154", testExample154),
        ("testExample155", testExample155),
        ("testExample156", testExample156),
        ("testExample157", testExample157),
        ("testExample158", testExample158),
        ("testExample159", testExample159),
        ("testExample160", testExample160),
    ]
}

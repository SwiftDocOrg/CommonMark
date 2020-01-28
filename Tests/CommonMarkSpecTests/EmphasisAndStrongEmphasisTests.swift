// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecEmphasisAndStrongEmphasisTests: XCTestCase {
    func testExample350() throws {
        let markdown = #######"""
        *foo bar*

        """#######

        let html = #######"""
        <p><em>foo bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample351() throws {
        let markdown = #######"""
        a * foo bar*

        """#######

        let html = #######"""
        <p>a * foo bar*</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample352() throws {
        let markdown = #######"""
        a*"foo"*

        """#######

        let html = #######"""
        <p>a*&quot;foo&quot;*</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample353() throws {
        let markdown = #######"""
        * a *

        """#######

        let html = #######"""
        <p>* a *</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample354() throws {
        let markdown = #######"""
        foo*bar*

        """#######

        let html = #######"""
        <p>foo<em>bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample355() throws {
        let markdown = #######"""
        5*6*78

        """#######

        let html = #######"""
        <p>5<em>6</em>78</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample356() throws {
        let markdown = #######"""
        _foo bar_

        """#######

        let html = #######"""
        <p><em>foo bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample357() throws {
        let markdown = #######"""
        _ foo bar_

        """#######

        let html = #######"""
        <p>_ foo bar_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample358() throws {
        let markdown = #######"""
        a_"foo"_

        """#######

        let html = #######"""
        <p>a_&quot;foo&quot;_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample359() throws {
        let markdown = #######"""
        foo_bar_

        """#######

        let html = #######"""
        <p>foo_bar_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample360() throws {
        let markdown = #######"""
        5_6_78

        """#######

        let html = #######"""
        <p>5_6_78</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample361() throws {
        let markdown = #######"""
        пристаням_стремятся_

        """#######

        let html = #######"""
        <p>пристаням_стремятся_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample362() throws {
        let markdown = #######"""
        aa_"bb"_cc

        """#######

        let html = #######"""
        <p>aa_&quot;bb&quot;_cc</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample363() throws {
        let markdown = #######"""
        foo-_(bar)_

        """#######

        let html = #######"""
        <p>foo-<em>(bar)</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample364() throws {
        let markdown = #######"""
        _foo*

        """#######

        let html = #######"""
        <p>_foo*</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample365() throws {
        let markdown = #######"""
        *foo bar *

        """#######

        let html = #######"""
        <p>*foo bar *</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample366() throws {
        let markdown = #######"""
        *foo bar
        *

        """#######

        let html = #######"""
        <p>*foo bar
        *</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample367() throws {
        let markdown = #######"""
        *(*foo)

        """#######

        let html = #######"""
        <p>*(*foo)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample368() throws {
        let markdown = #######"""
        *(*foo*)*

        """#######

        let html = #######"""
        <p><em>(<em>foo</em>)</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample369() throws {
        let markdown = #######"""
        *foo*bar

        """#######

        let html = #######"""
        <p><em>foo</em>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample370() throws {
        let markdown = #######"""
        _foo bar _

        """#######

        let html = #######"""
        <p>_foo bar _</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample371() throws {
        let markdown = #######"""
        _(_foo)

        """#######

        let html = #######"""
        <p>_(_foo)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample372() throws {
        let markdown = #######"""
        _(_foo_)_

        """#######

        let html = #######"""
        <p><em>(<em>foo</em>)</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample373() throws {
        let markdown = #######"""
        _foo_bar

        """#######

        let html = #######"""
        <p>_foo_bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample374() throws {
        let markdown = #######"""
        _пристаням_стремятся

        """#######

        let html = #######"""
        <p>_пристаням_стремятся</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample375() throws {
        let markdown = #######"""
        _foo_bar_baz_

        """#######

        let html = #######"""
        <p><em>foo_bar_baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample376() throws {
        let markdown = #######"""
        _(bar)_.

        """#######

        let html = #######"""
        <p><em>(bar)</em>.</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample377() throws {
        let markdown = #######"""
        **foo bar**

        """#######

        let html = #######"""
        <p><strong>foo bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample378() throws {
        let markdown = #######"""
        ** foo bar**

        """#######

        let html = #######"""
        <p>** foo bar**</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample379() throws {
        let markdown = #######"""
        a**"foo"**

        """#######

        let html = #######"""
        <p>a**&quot;foo&quot;**</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample380() throws {
        let markdown = #######"""
        foo**bar**

        """#######

        let html = #######"""
        <p>foo<strong>bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample381() throws {
        let markdown = #######"""
        __foo bar__

        """#######

        let html = #######"""
        <p><strong>foo bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample382() throws {
        let markdown = #######"""
        __ foo bar__

        """#######

        let html = #######"""
        <p>__ foo bar__</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample383() throws {
        let markdown = #######"""
        __
        foo bar__

        """#######

        let html = #######"""
        <p>__
        foo bar__</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample384() throws {
        let markdown = #######"""
        a__"foo"__

        """#######

        let html = #######"""
        <p>a__&quot;foo&quot;__</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample385() throws {
        let markdown = #######"""
        foo__bar__

        """#######

        let html = #######"""
        <p>foo__bar__</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample386() throws {
        let markdown = #######"""
        5__6__78

        """#######

        let html = #######"""
        <p>5__6__78</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample387() throws {
        let markdown = #######"""
        пристаням__стремятся__

        """#######

        let html = #######"""
        <p>пристаням__стремятся__</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample388() throws {
        let markdown = #######"""
        __foo, __bar__, baz__

        """#######

        let html = #######"""
        <p><strong>foo, <strong>bar</strong>, baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample389() throws {
        let markdown = #######"""
        foo-__(bar)__

        """#######

        let html = #######"""
        <p>foo-<strong>(bar)</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample390() throws {
        let markdown = #######"""
        **foo bar **

        """#######

        let html = #######"""
        <p>**foo bar **</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample391() throws {
        let markdown = #######"""
        **(**foo)

        """#######

        let html = #######"""
        <p>**(**foo)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample392() throws {
        let markdown = #######"""
        *(**foo**)*

        """#######

        let html = #######"""
        <p><em>(<strong>foo</strong>)</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample393() throws {
        let markdown = #######"""
        **Gomphocarpus (*Gomphocarpus physocarpus*, syn.
        *Asclepias physocarpa*)**

        """#######

        let html = #######"""
        <p><strong>Gomphocarpus (<em>Gomphocarpus physocarpus</em>, syn.
        <em>Asclepias physocarpa</em>)</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample394() throws {
        let markdown = #######"""
        **foo "*bar*" foo**

        """#######

        let html = #######"""
        <p><strong>foo &quot;<em>bar</em>&quot; foo</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample395() throws {
        let markdown = #######"""
        **foo**bar

        """#######

        let html = #######"""
        <p><strong>foo</strong>bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample396() throws {
        let markdown = #######"""
        __foo bar __

        """#######

        let html = #######"""
        <p>__foo bar __</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample397() throws {
        let markdown = #######"""
        __(__foo)

        """#######

        let html = #######"""
        <p>__(__foo)</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample398() throws {
        let markdown = #######"""
        _(__foo__)_

        """#######

        let html = #######"""
        <p><em>(<strong>foo</strong>)</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample399() throws {
        let markdown = #######"""
        __foo__bar

        """#######

        let html = #######"""
        <p>__foo__bar</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample400() throws {
        let markdown = #######"""
        __пристаням__стремятся

        """#######

        let html = #######"""
        <p>__пристаням__стремятся</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample401() throws {
        let markdown = #######"""
        __foo__bar__baz__

        """#######

        let html = #######"""
        <p><strong>foo__bar__baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample402() throws {
        let markdown = #######"""
        __(bar)__.

        """#######

        let html = #######"""
        <p><strong>(bar)</strong>.</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample403() throws {
        let markdown = #######"""
        *foo [bar](/url)*

        """#######

        let html = #######"""
        <p><em>foo <a href="/url">bar</a></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample404() throws {
        let markdown = #######"""
        *foo
        bar*

        """#######

        let html = #######"""
        <p><em>foo
        bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample405() throws {
        let markdown = #######"""
        _foo __bar__ baz_

        """#######

        let html = #######"""
        <p><em>foo <strong>bar</strong> baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample406() throws {
        let markdown = #######"""
        _foo _bar_ baz_

        """#######

        let html = #######"""
        <p><em>foo <em>bar</em> baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample407() throws {
        let markdown = #######"""
        __foo_ bar_

        """#######

        let html = #######"""
        <p><em><em>foo</em> bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample408() throws {
        let markdown = #######"""
        *foo *bar**

        """#######

        let html = #######"""
        <p><em>foo <em>bar</em></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample409() throws {
        let markdown = #######"""
        *foo **bar** baz*

        """#######

        let html = #######"""
        <p><em>foo <strong>bar</strong> baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample410() throws {
        let markdown = #######"""
        *foo**bar**baz*

        """#######

        let html = #######"""
        <p><em>foo<strong>bar</strong>baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample411() throws {
        let markdown = #######"""
        *foo**bar*

        """#######

        let html = #######"""
        <p><em>foo**bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample412() throws {
        let markdown = #######"""
        ***foo** bar*

        """#######

        let html = #######"""
        <p><em><strong>foo</strong> bar</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample413() throws {
        let markdown = #######"""
        *foo **bar***

        """#######

        let html = #######"""
        <p><em>foo <strong>bar</strong></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample414() throws {
        let markdown = #######"""
        *foo**bar***

        """#######

        let html = #######"""
        <p><em>foo<strong>bar</strong></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample415() throws {
        let markdown = #######"""
        foo***bar***baz

        """#######

        let html = #######"""
        <p>foo<em><strong>bar</strong></em>baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample416() throws {
        let markdown = #######"""
        foo******bar*********baz

        """#######

        let html = #######"""
        <p>foo<strong><strong><strong>bar</strong></strong></strong>***baz</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample417() throws {
        let markdown = #######"""
        *foo **bar *baz* bim** bop*

        """#######

        let html = #######"""
        <p><em>foo <strong>bar <em>baz</em> bim</strong> bop</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample418() throws {
        let markdown = #######"""
        *foo [*bar*](/url)*

        """#######

        let html = #######"""
        <p><em>foo <a href="/url"><em>bar</em></a></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample419() throws {
        let markdown = #######"""
        ** is not an empty emphasis

        """#######

        let html = #######"""
        <p>** is not an empty emphasis</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample420() throws {
        let markdown = #######"""
        **** is not an empty strong emphasis

        """#######

        let html = #######"""
        <p>**** is not an empty strong emphasis</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample421() throws {
        let markdown = #######"""
        **foo [bar](/url)**

        """#######

        let html = #######"""
        <p><strong>foo <a href="/url">bar</a></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample422() throws {
        let markdown = #######"""
        **foo
        bar**

        """#######

        let html = #######"""
        <p><strong>foo
        bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample423() throws {
        let markdown = #######"""
        __foo _bar_ baz__

        """#######

        let html = #######"""
        <p><strong>foo <em>bar</em> baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample424() throws {
        let markdown = #######"""
        __foo __bar__ baz__

        """#######

        let html = #######"""
        <p><strong>foo <strong>bar</strong> baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample425() throws {
        let markdown = #######"""
        ____foo__ bar__

        """#######

        let html = #######"""
        <p><strong><strong>foo</strong> bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample426() throws {
        let markdown = #######"""
        **foo **bar****

        """#######

        let html = #######"""
        <p><strong>foo <strong>bar</strong></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample427() throws {
        let markdown = #######"""
        **foo *bar* baz**

        """#######

        let html = #######"""
        <p><strong>foo <em>bar</em> baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample428() throws {
        let markdown = #######"""
        **foo*bar*baz**

        """#######

        let html = #######"""
        <p><strong>foo<em>bar</em>baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample429() throws {
        let markdown = #######"""
        ***foo* bar**

        """#######

        let html = #######"""
        <p><strong><em>foo</em> bar</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample430() throws {
        let markdown = #######"""
        **foo *bar***

        """#######

        let html = #######"""
        <p><strong>foo <em>bar</em></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample431() throws {
        let markdown = #######"""
        **foo *bar **baz**
        bim* bop**

        """#######

        let html = #######"""
        <p><strong>foo <em>bar <strong>baz</strong>
        bim</em> bop</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample432() throws {
        let markdown = #######"""
        **foo [*bar*](/url)**

        """#######

        let html = #######"""
        <p><strong>foo <a href="/url"><em>bar</em></a></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample433() throws {
        let markdown = #######"""
        __ is not an empty emphasis

        """#######

        let html = #######"""
        <p>__ is not an empty emphasis</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample434() throws {
        let markdown = #######"""
        ____ is not an empty strong emphasis

        """#######

        let html = #######"""
        <p>____ is not an empty strong emphasis</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample435() throws {
        let markdown = #######"""
        foo ***

        """#######

        let html = #######"""
        <p>foo ***</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample436() throws {
        let markdown = #######"""
        foo *\**

        """#######

        let html = #######"""
        <p>foo <em>*</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample437() throws {
        let markdown = #######"""
        foo *_*

        """#######

        let html = #######"""
        <p>foo <em>_</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample438() throws {
        let markdown = #######"""
        foo *****

        """#######

        let html = #######"""
        <p>foo *****</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample439() throws {
        let markdown = #######"""
        foo **\***

        """#######

        let html = #######"""
        <p>foo <strong>*</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample440() throws {
        let markdown = #######"""
        foo **_**

        """#######

        let html = #######"""
        <p>foo <strong>_</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample441() throws {
        let markdown = #######"""
        **foo*

        """#######

        let html = #######"""
        <p>*<em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample442() throws {
        let markdown = #######"""
        *foo**

        """#######

        let html = #######"""
        <p><em>foo</em>*</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample443() throws {
        let markdown = #######"""
        ***foo**

        """#######

        let html = #######"""
        <p>*<strong>foo</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample444() throws {
        let markdown = #######"""
        ****foo*

        """#######

        let html = #######"""
        <p>***<em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample445() throws {
        let markdown = #######"""
        **foo***

        """#######

        let html = #######"""
        <p><strong>foo</strong>*</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample446() throws {
        let markdown = #######"""
        *foo****

        """#######

        let html = #######"""
        <p><em>foo</em>***</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample447() throws {
        let markdown = #######"""
        foo ___

        """#######

        let html = #######"""
        <p>foo ___</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample448() throws {
        let markdown = #######"""
        foo _\__

        """#######

        let html = #######"""
        <p>foo <em>_</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample449() throws {
        let markdown = #######"""
        foo _*_

        """#######

        let html = #######"""
        <p>foo <em>*</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample450() throws {
        let markdown = #######"""
        foo _____

        """#######

        let html = #######"""
        <p>foo _____</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample451() throws {
        let markdown = #######"""
        foo __\___

        """#######

        let html = #######"""
        <p>foo <strong>_</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample452() throws {
        let markdown = #######"""
        foo __*__

        """#######

        let html = #######"""
        <p>foo <strong>*</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample453() throws {
        let markdown = #######"""
        __foo_

        """#######

        let html = #######"""
        <p>_<em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample454() throws {
        let markdown = #######"""
        _foo__

        """#######

        let html = #######"""
        <p><em>foo</em>_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample455() throws {
        let markdown = #######"""
        ___foo__

        """#######

        let html = #######"""
        <p>_<strong>foo</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample456() throws {
        let markdown = #######"""
        ____foo_

        """#######

        let html = #######"""
        <p>___<em>foo</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample457() throws {
        let markdown = #######"""
        __foo___

        """#######

        let html = #######"""
        <p><strong>foo</strong>_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample458() throws {
        let markdown = #######"""
        _foo____

        """#######

        let html = #######"""
        <p><em>foo</em>___</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample459() throws {
        let markdown = #######"""
        **foo**

        """#######

        let html = #######"""
        <p><strong>foo</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample460() throws {
        let markdown = #######"""
        *_foo_*

        """#######

        let html = #######"""
        <p><em><em>foo</em></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample461() throws {
        let markdown = #######"""
        __foo__

        """#######

        let html = #######"""
        <p><strong>foo</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample462() throws {
        let markdown = #######"""
        _*foo*_

        """#######

        let html = #######"""
        <p><em><em>foo</em></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample463() throws {
        let markdown = #######"""
        ****foo****

        """#######

        let html = #######"""
        <p><strong><strong>foo</strong></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample464() throws {
        let markdown = #######"""
        ____foo____

        """#######

        let html = #######"""
        <p><strong><strong>foo</strong></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample465() throws {
        let markdown = #######"""
        ******foo******

        """#######

        let html = #######"""
        <p><strong><strong><strong>foo</strong></strong></strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample466() throws {
        let markdown = #######"""
        ***foo***

        """#######

        let html = #######"""
        <p><em><strong>foo</strong></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample467() throws {
        let markdown = #######"""
        _____foo_____

        """#######

        let html = #######"""
        <p><em><strong><strong>foo</strong></strong></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample468() throws {
        let markdown = #######"""
        *foo _bar* baz_

        """#######

        let html = #######"""
        <p><em>foo _bar</em> baz_</p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample469() throws {
        let markdown = #######"""
        *foo __bar *baz bim__ bam*

        """#######

        let html = #######"""
        <p><em>foo <strong>bar *baz bim</strong> bam</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample470() throws {
        let markdown = #######"""
        **foo **bar baz**

        """#######

        let html = #######"""
        <p>**foo <strong>bar baz</strong></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample471() throws {
        let markdown = #######"""
        *foo *bar baz*

        """#######

        let html = #######"""
        <p>*foo <em>bar baz</em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample472() throws {
        let markdown = #######"""
        *[bar*](/url)

        """#######

        let html = #######"""
        <p>*<a href="/url">bar*</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample473() throws {
        let markdown = #######"""
        _foo [bar_](/url)

        """#######

        let html = #######"""
        <p>_foo <a href="/url">bar_</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample474() throws {
        let markdown = #######"""
        *<img src="foo" title="*"/>

        """#######

        let html = #######"""
        <p>*<img src="foo" title="*"/></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample475() throws {
        let markdown = #######"""
        **<a href="**">

        """#######

        let html = #######"""
        <p>**<a href="**"></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample476() throws {
        let markdown = #######"""
        __<a href="__">

        """#######

        let html = #######"""
        <p>__<a href="__"></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample477() throws {
        let markdown = #######"""
        *a `*`*

        """#######

        let html = #######"""
        <p><em>a <code>*</code></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample478() throws {
        let markdown = #######"""
        _a `_`_

        """#######

        let html = #######"""
        <p><em>a <code>_</code></em></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample479() throws {
        let markdown = #######"""
        **a<http://foo.bar/?q=**>

        """#######

        let html = #######"""
        <p>**a<a href="http://foo.bar/?q=**">http://foo.bar/?q=**</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

    func testExample480() throws {
        let markdown = #######"""
        __a<http://foo.bar/?q=__>

        """#######

        let html = #######"""
        <p>__a<a href="http://foo.bar/?q=__">http://foo.bar/?q=__</a></p>

        """#######

        let document = try Document(markdown)
        XCTAssertEqual(document.render(format: .html, options: [.unsafe]), html)
    }

}

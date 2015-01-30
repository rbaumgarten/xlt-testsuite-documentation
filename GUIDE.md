# Guide To SiteGenesis-Community-TestSuite 

This document describes the used test suite naming conventions, gives a short introduction to test suite development and shows some test suite examples. The last part contains some pointers to various helpful resources on other websites. 

## Test Suite Naming Conventions

The following styling rules where quite consequently applied to form a solid structure and define consistent descriptions and comments as well as establish a naming scheme for folders, packages and files. The elaborately discussed style guidelines may serve as a loose pointer to build your uniform test suite or be completely adapted to your needs. (Element names written in `{}` are required. Element names written in `[]` are optional.) 

### Naming of Packages (Folders)

- Tests: `tests.{shoparea}`
- Modules: `modules.pages.[shoparea].{currentpage}`
- Special Modules > global : `modules.global.[shoparea]`
- Special Modules > helper : `modules.helper.[shoparea]`

### Naming of Files

- Tests: `T{ShopArea}{TestScope}_{interaction}{Name}[Subname]`
- Modules: `M{Page}_[PagePart]_{interaction}{Name}[Subname]`
- Special Modules > Validation: `V{Page}_[PagePart]_{interaction}{Name}[Subname]`
- Special Modules > Flow: `F_{StartPage}_{interaction}{Name}[Subname]`

### Naming of Variables

- Module Parameters (used as input): `{Name}[Subname]`
- Module Parameters (used as output): `{Name}[Subname]_store`
- Test Data: `{name}_[subname]` 
- Dynamic Variables: `{name}_[subname]`

### Element Names

This section defines the element names which are part of the naming scheme of packages, files and variables.

**Page Elements**

- **Homepage**: main landing page.
- **Search**: search box and search result page.
- **Catalog**: catalog page, product grid/listing/overview page (PGP/PLP/POP).
- **ProductDetailPage**: product detail page (PDP).
- **MiniCart**: minicart pop up.
- **Cart**: cart page.
- **Checkout**: checkout pages and steps: addresses (shipping/billing), payement, order submit.
- **Account**: account page, my account.

**UI Interaction Elements**

- **click**: click a button or link.
- **select**: select form dropdown menus or radio buttons.
- **check**: mark checkboxes.
- **enter**: enter text or values in input fields.
- **hover**: mouse over a link to open js menu etc.

**XLT Interaction Elements**

- **store**: store text or values from a page for following validations.
- **validate**: verify and assert values, parameters or elements.

**Flow Interaction Elements**

- **flow**: flow to process several modules.

**User Elements**

- **Customer**: registered user with account.
- **Guest**: unregistered user without account.

## Test Suite Development

This short introduction outlines the process of test suite development on the foundation of the provided modules. It may help you to build your first own tests. Basically there are two major steps. The first step is to define a desired business process on a **sheet of paper** (requirements engineering). The second step is to actually build the corresponding test case and needed modules in **XLT Script Developer** (test development).

#### Step 1: Define a Desired Business Process

Think about the business process you want to simulate and then define it. An example written on a **sheet of paper**:

> Start a `session` and go to a `category` at the `catalog`. Click a `product` and end up on a `productdetailpage`. Change product details like `color`, `size` and `quantity` and decide to add the product to `wish list`. The shop will ask to `create an account`. Enter `profile` data and submit. Validate that `product` with selected details like `color`, `size` and `quantity` is saved in `wish list`. Leave the shop until your next visit and end the `session`.

#### Step 2: Build the Corresponding Test Case

By following these development steps you may implement your own test case in **XLT Script Developer**:

- **Create** a new `test case` and write an informal list of short steps describing the simulated process.
- **Insert** `comment` lines in the `test case` with step descriptions aggregated by their interacted `pages`.
- **Drag and drop** the needed `modules` from the `pages` packages in the project tree into the `test`. 
- **Configure** specific `test data` at the `test case` and dynamic variables for used `modules`.

Congratulations, you may **run your first own test now** (after several iterations over steps 3 and 4).

## Test Suite Examples

Following are some examples (ex.) of module commands used for text operations, text matching or date operations.

#### Text Operation Examples

| Command       | Target                                                | Value                                 |
| :------------ | :---------------------------------------------------- | :------------------------------------ |
|               | _ex. Remove trailing whitespace_                      |                                       |
| storeEval     | "${block_totals_shipping}".trim()                     | ${totals_shipping}                    |
|               | _ex. Substring inclusive until last character_        |                                       |
| storeEval     | "${credit_card_number}".substring(12,16)              | ${credit_card_last_four_digits}       |
|               | _ex. Substring exclusive until first occurence_       |                                       |
| storeEval     | "${label}".slice(0, "${label}".indexOf(‘:’)           | ${shipping_method_name')              |
| storeEval     | "${shipping_method_label}".match(/[^:]*/)             | ${shipping_method_name}               |
| storeEval     | "${shipping_method_label}".replace(/\:.*$/,"")        | ${shipping_method_name}               |



#### Text Matching Examples

| Command       | Target                                                | Value                                 |
| :------------ | :---------------------------------------------------- | :------------------------------------ |
|               | _ex. Order date pattern matching_                     |                                       |
| assertText    | css=#main .order-date .value                          | regexp:[A-Z][a-z]{2} [0-9]{2}, [0-9]{4} |
|               | _ex. Order number pattern matching_                   |                                       |
| assertText    | css=#main .order-number .value                        | regexp:00[0-9]{6}                     |
|               | _ex. Capitalized label pattern matching_              |                                       |
| assertText    | css=#main .label .capitalized                         | regexpi:CaseInsensitive HEADER        |
|               | _ex. Match inner substring with asterisks_            |                                       |
| assertText    | css=#main .shipping-address .city-state-postal        | \*${state}\*                            |   


#### Date Operation Examples

_ex. Convert full english month name to number with two digits_  

- __Command:__ `storeEval`  
- __Target:__  `("0" + ("January___February__March_____April_____May_______June______July______August____September_October___November__December__".indexOf("@{MMonthName}")/ 10 + 1)).slice(-2)`
- __Value:__ `$(month_number)`

## Additional Resources

Here are some links to other helpful resources for test development.

### Xceptance

- [Xceptance](https://www.xceptance.de/en/)
- [Xceptance Blog](http://blog.xceptance.com/)
- Xceptance Blog: [Test Automation for Demandware SiteGenesis with XLT](http://blog.xceptance.com/2012/10/27/test-automation-for-demandware-sitegenesis-with-xlt/)
- Xceptance Blog: [Use XLT with Sauce Labs and BrowserStack](http://blog.xceptance.com/2014/03/12/use-xlt-with-sauce-labs-and-browserstack/)

### XLT

- XLT [Main](https://www.xceptance.de/en/xlt/)
- XLT [Manual](https://lab.xceptance.de/releases/xlt/latest/user-manual.html)
- XLT [Quick Start](https://lab.xceptance.de/releases/xlt/latest/quick-start-guide.html)
- XLT Script Developer: [Firefox Addon EN](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/), [Firefox Addon DE](https://addons.mozilla.org/de/firefox/addon/xceptance-script-developer/)
- Descriptions and Commments: [GitHub Markup](https://github.com/github/markup/tree/master#html-sanitization), [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), [Markdown](http://daringfireball.net/projects/markdown/), [MultiMarkdown](http://fletcherpenney.net/multimarkdown/)

### Demandware

- [Demandware](http://www.demandware.com/)
- Demandware [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) (Default Shop Implementation)

### W3C

- W3C All Standards and Drafts [Technical Reports](http://www.w3.org/TR/)
- W3C [DOM TR](http://www.w3.org/TR/dom/)
- W3C [HTML & CSS Portal](http://www.w3.org/standards/webdesign/htmlcss.html), [HTML TR](http://www.w3.org/TR/html/)
- W3C [CSS Portal](http://www.w3.org/Style/CSS/), [CSS TR](http://www.w3.org/TR/CSS/), [CSS Selectors TR](http://www.w3.org/TR/selectors/#selectors)
- W3C [Javascript Portal](http://www.w3.org/standards/webdesign/script.html), [JS All](http://www.w3.org/standards/techs/js#w3c_all)
- W3C [XPath All](http://www.w3.org/standards/techs/xpath#w3c_all), [XPath TR](http://www.w3.org/TR/xpath-30/), [XPath Functions TR](http://www.w3.org/TR/xpath-functions-30/)
- W3C [XML Portal](http://www.w3.org/standards/xml/)

### W3Schools

- W3Schools [References](http://www.w3schools.com/sitemap/sitemap_references.asp), [Tutorials](http://www.w3schools.com/sitemap/default.asp), [Examples](http://www.w3schools.com/sitemap/sitemap_examples.asp)
- W3Schools [HTML](http://www.w3schools.com/html/)
- W3Schools [CSS](http://www.w3schools.com/cssref/), [CSS Selectors](http://www.w3schools.com/cssref/css_selectors.asp)
- W3Schools [JavaScript Reference](http://www.w3schools.com/jsref/), [JavaScript Regexp](http://www.w3schools.com/jsref/jsref_obj_regexp.asp)
- W3Schools [XPath, XQuery and XSLT Functions](http://www.w3schools.com/xpath/)

### Other Links

- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)

### Test Suite Structure

#### Tests

The aim of our test set is to cover standard functions of the shop system. Every test simulates a shopping behaviour of a customer. Regarded closely a test even focuses on a specific part of the buying process which is tested in depth. This test focus describes several shop area in the package structrue in which tests are ordered. 

All tests cover a wide variety of different test pathes and are build up on script modules. Each test consists of test setup (ensuring that all preconditions are met), test scope (focusing on all relevant testing steps) and test teardown (cleaning up of changed data in your browser and reversing the state of the shop system to its origin).

#### Modules

A script module contains actions, commands and comments. Each module interacts with elements of ta specifc webpage. Thus it makes sense to structured them by their accordnig pages. Each module can be reused by different tests.

#### Special Modules > Validation

Validation of webpage elements and dynamic data is a very essential part of testing. Hence these special modules evalute that a needed fit criterion is met (mostly via assertions).

#### Special Modules > Flow

Some modules mimic more sophisticated shopping behaviours by interacting with several pages in a flow. The achieved specific goal at the end of the process is of most importance (in contrast to the taken singular steps). Flows often reuse other modules and may enable a compact test case structure (implemented in setup, scope or teardown). Examples: Add any basic product to cart, Create any new customer, Add any address to a customer, Check order status in order history.

### Test Suite Development Guide

This development guide may help you to build your first own tests. Enjoy the comfort of the provided modules!

#### Simulate a desired shopping process

While shopping with your web browser you may browse the `catalog`, end up on a `productdetailpage`, change details like `color`, `size` and `quantity`, and may decide to add the product to `wishlist`. Therefor the shop might ask you to `create an account`, which you will to save your wish for later. Now you may leave the shop until your next visit.

#### Build the corresponding test case

Following this simple step-by-step guide you may to easily implement  yout own test case:

**1. Create** a new `test case` and write an informal list of short steps describing the simulated process.
**2. Insert** `comment` lines in the `test case` with steps descriptions aggregated by their interacted `pages`.
**3. Drag and drop** the needed modules form the `modules` packages in the project tree.
**4. Configure** your needed `test data` at the `test case` and `dynamic variables` in the used `modules`.

 Congratulations, you may **run your first own test now** (after several iterations over steps 3 and 4).

### Test Suite Style Guidelines

The following styling rules where quite consequently applied to form a solid structure and define consistent descriptions and comments as well as establish a naming scheme for folders, packages and files. The elaborately discussed style guidelines may serve as a loose pointer to build your uniform test suite or be completely adapted to your needs.

#### Project Tree

    .
    |-- bin                                # executables
    |-- config                             # IDE configuration
    |   \-- data                           # test data dictionaries
    |       \-- default                    
    |-- scripts
    |   |-- modules/helper                 # basic scripts
    |   |-- modules/pages                  # scripts for specific pages
    |   |   |-- account                    # scripts on Account pages
    |   |   |-- cart                       # scripts on Cart page
    |   |   |-- catalog                    # scripts on Catalog pages
    |   |   |-- checkout                   # scripts on Checkout pages
    |   |   |-- homepage                   # scripts on Homepage
    |   |   |-- minicart                   # scripts on MiniCart popup
    |   |   |-- productdetailpage          # scripts on ProductDetailPage
    |   |   \-- search                     # scripts for Searching
    |   \-- tests
    |       |-- account                    # tests for Account pages
    |       |-- cart                       # tests for Cart page
    |       |-- catalog                    # tests for Catalog pages
    |       |-- checkout                   # tests for Checkout pages
    |       \-- search                     # tests for Searches
    |-- src
    |   \-- tests                          # XLT java wrapper classes
    |-- build.properties                   # XLT ant build properties
    |-- build.xml                          # XLT ant build configuration
    |-- xlt-scriptdeveloper.properties     # XLT settings
    \-- global_testdata.properties         # global testdata properties

#### Packages

- Tests: `tests.{shoparea}`
- Modules: `modules.pages.[shoparea].{currentpage}`
- Special Modules > global : `modules.global.[shoparea]`
- Special Modules > helper : `modules.helper.[shoparea]`

#### Files

- Tests: `T{ShopArea}{TestScope}_{executeInteractionName}`
- Modules: `M{Page}_[PagePart]_{executeInteractionName}`
- Special Modules > Validation: `V{Page}_[PagePart]_{executeInteractionName}`
- Special Modules > Flow: `F_{StartPage}_{executeProcessName}`

#### Parameters

- Module Parameters (types, used as input): `TypeNameSubname`
- Module Parameters (types, used as output): `ReturnTypeNameSubname`

#### Variables

- Dynamic Variables: `typeNameSubname`
- Final Variables (constants): `TYPE_NAME_SUBNAME`
- Test Data (final, constants): `DATA_TYPE_NAME_SUBNAME` 

#### Users

- **Customer**: registered user with account.
- **Guest**: unregistered user without account.

#### Pages

- **Homepage**: main landing page.
- **Search**: search box and search result page.
- **Catalog**: catalog page, product grid/listing/overview page (PGP/PLP/POP).
- **ProductDetailPage**: product detail page (PDP).
- **MiniCart**: minicart pop up.
- **Cart**: cart page.
- **Checkout**: checkout pages and steps: addresses (shipping/billing), payement, order submit.
- **Account**: account page, my account.

#### Interactions

- **go to**: navigate to a page
- **continue**: save entered data an go to next page
- **submit**: save and send entered data from (several) pages
- **order**: purchase or buy products.
- **set color**: select product color
- **set size**: select product size
- **set quantity**: enter product quantity
- **add to cart**: puts product in cart.
- **add to wishlist**: putproduct to wishlist.
- **validate**: verify and assert values, parameters or elements.
- **enter**: enter parameters or values in input fields;
- **select**: choose from radio buttons.
- **check**: mark checkboxes.
- **store**: store values from a page for following validations.

### Test Suite Examples

Following is a short list of advanced scripting examples and showcases (e.g. for string operations by utilization of regular expressions):

1. `FSearchAddProductToCart`: In this flow product quantity is specified as input and output parameter. The reason for this is that the used module to store all product details is also used in other context.

2. Remove trailing whitespace (ex: totals shipping)  

        storeEval('"${block_totals_shipping}".trim()','${totals_shipping}')

3. Substring inclusive until last character (ex: creditcard number)  

        storeEval('"${creditcard_number}".substring(12,16)','$'{creditcard_last_four_digits})

4. Substring exclusive until first occurence of character (ex: shipping method label)  

        storeEval('"${shipping_method_label}".slice(0, "${shipping_method_label}".indexOf(‘:’)', '${shipping_method_name')
        storeEval('"${shipping_method_label}".match(/[^:]*/)', '${shipping_method_name')
        storeEval('"${shipping_method_label}".replace(/\:.*$/,"")', '${shipping_method_name')

5. Convert full english month name to number with two digits (ex: helper module)  

        storeEval('("0" + ("January___February__March_____April_____May_______June______July______August____September_October___November__December__".indexOf("@{MMonthName}")/ 10 + 1)).slice(-2)', '$(month_number)');

6. Pattern matching for order date and order number (ex: order confirmation summary)  

        assertText('css=#main .order-date .value','regexp:[A-Z][a-z]{2} [0-9]{2}, [0-9]{4}');   
        assertText('css=#main .order-number .value','regexp:00[0-9]{6}');

7. Pattern matching for uppercased words by css (ex: column or navigation headers)  

        assertText('css=#main .label .capitalized', 'regexpi:CaseInsensitive HEADER')

8. Pattern matching for any substring with asterisk (ex: shipping address)  

        assertText('css=#main .shipping-address .city-state-postal', '*${state}*')

### References

This is just a list of pointers to other uselful resources:

#### Xceptance

- [Xceptance](https://www.xceptance.de/en/)
- [Xceptance Blog](http://blog.xceptance.com/)
- Xceptance Blog: [Test Automation for Demandware SiteGenesis with XLT](http://blog.xceptance.com/2012/10/27/test-automation-for-demandware-sitegenesis-with-xlt/)
- Xceptance Blog: [Use XLT with Sauce Labs and BrowserStack](http://blog.xceptance.com/2014/03/12/use-xlt-with-sauce-labs-and-browserstack/)

#### XLT

- XLT [Main](https://www.xceptance.de/en/xlt/)
- XLT [Manual](https://lab.xceptance.de/releases/xlt/latest/user-manual.html)
- XLT [Quick Start](https://lab.xceptance.de/releases/xlt/latest/quick-start-guide.html)
- XLT Script Developer: [Firefox Addon EN](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/), [Firefox Addon DE](https://addons.mozilla.org/de/firefox/addon/xceptance-script-developer/)

#### Demandware

- [Demandware](http://www.demandware.com/)
- Demandware [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) (Default Shop Implementation)

#### W3C

- W3C All Standards and Drafts [Technical Reports](http://www.w3.org/TR/)
- W3C [DOM TR](http://www.w3.org/TR/dom/)
- W3C [HTML & CSS Portal](http://www.w3.org/standards/webdesign/htmlcss.html), [HTML TR](http://www.w3.org/TR/html/)
- W3C [CSS Portal](http://www.w3.org/Style/CSS/), [CSS TR](http://www.w3.org/TR/CSS/), [CSS Selectors TR](http://www.w3.org/TR/selectors/#selectors)
- W3C [Javascript Portal](http://www.w3.org/standards/webdesign/script.html), [JS All](http://www.w3.org/standards/techs/js#w3c_all)
- W3C [XPath All](http://www.w3.org/standards/techs/xpath#w3c_all), [XPath TR](http://www.w3.org/TR/xpath-30/), [XPath Functions TR](http://www.w3.org/TR/xpath-functions-30/)
- W3C [XML Portal](http://www.w3.org/standards/xml/)

#### W3Schools

- W3Schools [References](http://www.w3schools.com/sitemap/sitemap_references.asp), [Tutorials](http://www.w3schools.com/sitemap/default.asp), [Examples](http://www.w3schools.com/sitemap/sitemap_examples.asp)
- W3Schools [HTML](http://www.w3schools.com/html/)
- W3Schools [CSS](http://www.w3schools.com/cssref/), [CSS Selectors](http://www.w3schools.com/cssref/css_selectors.asp)
- W3Schools [JavaScript Reference](http://www.w3schools.com/jsref/), [JavaScript Regexp](http://www.w3schools.com/jsref/jsref_obj_regexp.asp)
- W3Schools [XPath, XQuery and XSLT Functions](http://www.w3schools.com/xpath/)

#### Other

- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)
- [Markdown](http://daringfireball.net/projects/markdown/), [MultiMarkdown](http://fletcherpenney.net/multimarkdown/)

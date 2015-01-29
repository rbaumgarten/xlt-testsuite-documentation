# SiteGenesis-Community-TestSuite

## Test Suite Naming Conventions

The following styling rules where quite consequently applied to form a solid structure and define consistent descriptions and comments as well as establish a naming scheme for folders, packages and files. The elaborately discussed style guidelines may serve as a loose pointer to build your uniform test suite or be completely adapted to your needs. (Naming parts written in `{}` are required. Naming parts written in `[]` are optional.) 

### Packages (Folders)

- Tests: `tests.{shoparea}`
- Modules: `modules.pages.[shoparea].{currentpage}`
- Special Modules > global : `modules.global.[shoparea]`
- Special Modules > helper : `modules.helper.[shoparea]`

### Files

- Tests: `T{ShopArea}{TestScope}_{interaction}{Name}[Subname]`
- Modules: `M{Page}_[PagePart]_{interaction}{Name}[Subname]`
- Special Modules > Validation: `V{Page}_[PagePart]_{interaction}{Name}[Subname]`
- Special Modules > Flow: `F_{StartPage}_{interaction}{Name}[Subname]`

### Variables

- Module Parameters (used as input): `{Name}[Subname]`
- Module Parameters (used as output): `{Name}[Subname]_store`
- Test Data: `{name}_[subname]` 
- Dynamic Variables: `{name}_[subname]`

### Naming Elements

The next paragraphes define the element name scheme of which packages, files and variables consit of.

#### Naming of Page Elements

- **Homepage**: main landing page.
- **Search**: search box and search result page.
- **Catalog**: catalog page, product grid/listing/overview page (PGP/PLP/POP).
- **ProductDetailPage**: product detail page (PDP).
- **MiniCart**: minicart pop up.
- **Cart**: cart page.
- **Checkout**: checkout pages and steps: addresses (shipping/billing), payement, order submit.
- **Account**: account page, my account.

#### Naming of UI Interaction Elements

- **click**: click a button or link.
- **select**: select form dropdown menus or radio buttons.
- **check**: mark checkboxes.
- **enter**: enter text or values in input fields.
- **hover**: mouse over a link to open js menu etc.

#### Naming of XLT Interaction Elements

- **store**: store text or values from a page for following validations.
- **validate**: verify and assert values, parameters or elements.

#### Naming of Flow Interaction Elements

- **flow**: flow to process several modules.

#### Naming of User Elements

- **Customer**: registered user with account.
- **Guest**: unregistered user without account.

## Test Suite Development Guide

This development guide may help you to build your first own tests. Enjoy the comfort of the provided modules!

### Simulate a Desired Business Process

While shopping with your web browser you may browse the `catalog`, end up on a `productdetailpage`, change details like `color`, `size` and `quantity`, and may decide to add the product to `wishlist`. Therefor the shop might ask you to `create an account`, which you will to save your wish for later. Now you may leave the shop until your next visit.

### Build the Corresponding Test Case

Following this simple step-by-step guide you may to easily implement  yout own test case:

1. **Create** a new `test case` and write an informal list of short steps describing the simulated process.
2. **Insert** `comment` lines in the `test case` with steps descriptions aggregated by their interacted `pages`.
3. **Drag and drop** the needed `modules` from the `pages` packages in the project tree into the `test` file. 
4. **Configure** specific `test data` at the `test case` and dynamic variables for used `modules`.

Congratulations, you may **run your first own test now** (after several iterations over steps 3 and 4).

## Test Suite Examples

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

## Resources

Here are some pointers to other helpful resources for test development:

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

### Other

- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)
- [Markdown](http://daringfireball.net/projects/markdown/), [MultiMarkdown](http://fletcherpenney.net/multimarkdown/)

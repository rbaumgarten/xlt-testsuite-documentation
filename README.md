<!-- <a href="https://gitter.im/dataduke/xlt-testsuite-documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter badge"></a> &nbsp; &nbsp; --> <a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# SiteGenesis-Community-TestSuite

This is a test suite for __XLT Script Developer__ and __XLT__ to collect expierences, consolidate and share knowledge. It is based on the demo shop __Demandware__ __SiteGenesis__ but the underlying concepts and the communicated know-how are valid for building test suites of other web applications as well.

- Name: SiteGenesis-Community-TestSuite
- Version: #TODO
- Release: January 2015
- License: MIT License
- License URI: http://opensource.org/licenses/MIT (#TODO is this link okay?)
- Tags: xlt, testing, best practises, test automation, funtional testing, regression test, selenium (#TODO ?)
- Contributors:
    - René Schwietzke, Xceptance Software Technologies GmbH
    - Robert Baumgarten, Xceptance Software Technologies GmbH
    - Benjamin Nothdurft, Xceptance Software Technologies GmbH

## Requirements

Besides this test suite you only need the following requirements:

- Firefox
- XLT Script Developer v4.5.0 or higher: [Download](https://www.xceptance.com/en/xlt/download.html)
- [Demandware](http://www.demandware.com/) [SiteGenesis](ttp://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) v15.1.0.14 or higher

If you want to run more extended tests (e.g. with webdriver or full Java stack) please install the following requirements:

- XLT&reg;: [Download](https://www.xceptance.com/en/xlt/download.html)
- JDK
- Java IDE (e.g. eclipse)

## Installation and Configuration

Using this test suite with **XLT Script Developer**:

1. Install Firefox add-on XLT Script Developer.
2. Open XLT Script Developer.
3. Import this (unzipped) test suite by clicking the folder icon above the navigation panel.
4. Configure the **SiteGenesis** storefront URL in global test data.
5. Open a test case in the navigaton panel and click replay button in toolbar.

Using this test suite with **XLT**:

1. Create new Java project (with JDK runtime) based on unzipped test suite.
2. Import XLT libraries.
2. Edit configuration see below.
4. Run test as JUnit test. (default: Firefox webdriver)
5. Adapt webdriver configurations in `project.properties` if you like.

For further information please refer to the official [documentation](https://lab.xceptance.de/releases/xlt/latest/).

## Project Idea

As there are complex test suites for SiteGenesis we realized it is time to focus on building a small, well-defined and clearly structured test suite to bundle collected testing expierence in a handy set of tests. Everybody is invited to use it, learn from it, improve it and adapt it to their needs.

## Use Cases

The test suite is a handy reference for everybody interested in test automation:

- Introduction
    - demonstrate test automation and structure
    - use it as entry point with fast learning curve
- Existing Projects 
    - serve as collection of examples and show cases
    - reuse best practises for QA of other projects 
- New Projects
    - utilize for initial test automation of new shop projects based on SiteGenesis

## Feature Backlog

All planned features are tracked as issues of this GitHub repository.

---

# Extended Description

## Tests

The aim of our test set is to cover all standard functions of the shop system. Every test simulates a shopping behaviour of a customer. Regarded closy a test even focuses on specific part of buying process which is tested in depth. This test focus defines, where the test case file is placed inside the shop-area-driven test case package structure of the test suite. All tests cover a wide variety of different test pathes and are build up on script modules.

Each test consists of a test setup (ensuring that all preconditions are met), a test scope (focusing on all relevant testing steps) and a test teardown (cleaning up of all changed data in your browser and reversing the state of the shop system to its origin).

## Modules

A module is script containing commands and comments. Each module interacts with elements of the website. Thus all modules are packaged by their belonging website. Each module can be reused by different tests. 

All modules are named with "M" as first letter but to clearify the structure even further we decided to outline special modules:

__Validation -__ Very important to the testing is the validation of website elements and dynamic data. These modules evalute via assertion that a fit criterion is meet. To make this clear we decided to name these modules with "V" fo validation as first letter.

__Flow -__ Sometimes you have a very long setup procedure that you want to mask when you open a test inside of XLT Script Developer. FOr example you need to create an account or add several products to cart before the actual beginning of your test scope. Obviously the needed steps cover several websites or longer processes but are tieght closly together by their objective. We decided to consolidate these steps into flow modules and mark them with an "F" as first letter. Each flow may use several modules from different pages to achieve a distinct objective. A flow has defined starting and end point. To make it is as easy as possible a flow should start and end at the same page. The starting point defines the first word of it's name and the script location inside the package structure.


## Step-by-Step-Guide

__Scenario -__ While shopping with your web browser at a shop you may change product attributes like color, size and quantity at a specific ProductDetailPage via clicking menu items or typing values inside of input fields.

With **XLT Script Developer** Firefox extension and **XLT SiteGenesis-Community-TestSuite** framework from GitHub it is easy to create test cases for the described scenario by following this short **step-by-step guide**:

- **Identify** the workflow you want to simulate by making an informal list of page interactions.
- **Search** for all interactions in the according modules inside of the test suite.
- **Create** a new testcase and drag and drop the needed scripts form pageflow and modules packages in the fitting order into the testcase and specify all needed variables. You may also add local variables at the test package by right-clicking the tests packages and select "Manage Test Data".
- **Run** your tests as often as you like and enjoy the automized test execution with a warm cup of coffee and fluffy feeling of happiness!

---

# Examples and special cases

In the following there are several scripting examples to showcase possible ways for parameter handling and pattern matching strategies for string operations by utilization of regular expressions.

- TSearchAddProductToCart: product quantity is used as input parameter but also as an output parameter. This is because the store **PDP** product details module may be uses in other cases outside the flow so every product dtails is saved as an ourputparameter even though in this flow it would be irrelevant due to th input parameters.


- TAccountAddressBook 

enter and submit module getrennt

- Remove trailing whitespace (ex: totals shipping)  


    storeEval('"${block_totals_shipping}".trim()','${totals_shipping}')


- Substring inclusive until last character (ex: creditcard number)  


    storeEval('"${creditcard_number}".substring(12,16)','$'{creditcard_last_four_digits})


-  Substring exclusive until first occurence of character (ex: shipping method label)  


    storeEval('"${shipping_method_label}".slice(0, "${shipping_method_label}".indexOf(‘:’)', '${shipping_method_name')
    storeEval('"${shipping_method_label}".match(/[^:]*/)', '${shipping_method_name')
    storeEval('"${shipping_method_label}".replace(/\:.*$/,"")', '${shipping_method_name')


- Convert full english month name to number with two digits (ex: helper module)  


    storeEval('("0" + ("January___February__March_____April_____May_______June______July______August____September_October___November__December__".indexOf("@{MMonthName}")/ 10 + 1)).slice(-2)', '$(month_number)');


- Pattern matching for order date and order number (ex: order confirmation summary)  


    assertText('css=#main .order-date .value','regexp:[A-Z][a-z]{2} [0-9]{2}, [0-9]{4}');
    assertText('css=#main .order-number .value','regexp:00[0-9]{6}');


- Pattern matching for uppercased words by css (ex: column or navigation headers)  


    assertText('css=#main .label .capitalized', 'regexpi:CaseInsensitive HEADER')


- Pattern matching for any substring with asterisk (ex: shipping address)  


    assertText('css=#main .shipping-address .city-state-postal', '*${state}*')

---

# Structure

    .
    |-- bin                                # executables
    |-- config                             # IDE configuration
    |   |-- data                           # test data dictionaries
    |   |   \-- default                    
    |-- scripts
    |   |-- modules.helper                 # basic scripts
    |   |-- modules.pages                  # scripts for specific pages
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


## Packages

- Tests: `tests.{area}`
- Pageflows: `pageflows.{startpage}`
- Helper Pageflows: `pageflows.helper`
- Modules: `modules.pages.[area].{currentpage}`
- Helper Modules: `modules.helper.[area]`

## Files

- Tests: `{TTestscope}`
- Pageflows: `P{Startpage}{Processscope][Endpage]`
- Modules: `M{Currentpage}.[Pagepart].{Pageinteraction}`

## Users

- **Customer**: registered user with account.
- **Guest**: unregistered user without account.

## Pages

- **Homepage**: main landing page.
- **Search**: search box and search result page.
- **Catalog**: catalog page, product grid/listing/overview page (PGP/PLP/POP).
- **ProductDetailPage**: product detail page (PDP).
- **MiniCart**: minicart pop up.
- **Cart**: cart page.
- **Checkout**: checkout pages and steps: addresses (shipping/billing), payement, order submit.
- **Account**: account page, my account.

## Interactions

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

---

# References

## Xceptance

- [Xceptance](https://www.xceptance.de/en/)
- [Xceptance Blog](http://blog.xceptance.com/)
- Xceptance Blog: [Test Automation for Demandware SiteGenesis with XLT](http://blog.xceptance.com/2012/10/27/test-automation-for-demandware-sitegenesis-with-xlt/)
- Xceptance Blog: [Use XLT with Sauce Labs and BrowserStack](http://blog.xceptance.com/2014/03/12/use-xlt-with-sauce-labs-and-browserstack/)

## XLT

- XLT [Main](https://www.xceptance.de/en/xlt/)
- XLT [Manual](https://lab.xceptance.de/releases/xlt/latest/user-manual.html)
- XLT [Quick Start](https://lab.xceptance.de/releases/xlt/latest/quick-start-guide.html)
- XLT Script Developer: [Firefox Addon EN](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/), [Firefox Addon DE](https://addons.mozilla.org/de/firefox/addon/xceptance-script-developer/)

## Demandware

- [Demandware](http://www.demandware.com/)
- Demandware [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) (Default Shop Implementation)

## W3C

- W3C All Standards and Drafts [Technical Reports](http://www.w3.org/TR/)
- W3C [DOM TR](http://www.w3.org/TR/dom/)
- W3C [HTML & CSS Portal](http://www.w3.org/standards/webdesign/htmlcss.html), [HTML TR](http://www.w3.org/TR/html/)
- W3C [CSS Portal](http://www.w3.org/Style/CSS/), [CSS TR](http://www.w3.org/TR/CSS/), [CSS Selectors TR](http://www.w3.org/TR/selectors/#selectors)
- W3C [Javascript Portal](http://www.w3.org/standards/webdesign/script.html), [JS All](http://www.w3.org/standards/techs/js#w3c_all)
- W3C [XPath All](http://www.w3.org/standards/techs/xpath#w3c_all), [XPath TR](http://www.w3.org/TR/xpath-30/), [XPath Functions TR](http://www.w3.org/TR/xpath-functions-30/)
- W3C [XML Portal](http://www.w3.org/standards/xml/)

## W3Schools

- W3Schools [References](http://www.w3schools.com/sitemap/sitemap_references.asp), [Tutorials](http://www.w3schools.com/sitemap/default.asp), [Examples](http://www.w3schools.com/sitemap/sitemap_examples.asp)
- W3Schools [HTML](http://www.w3schools.com/html/)
- W3Schools [CSS](http://www.w3schools.com/cssref/), [CSS Selectors](http://www.w3schools.com/cssref/css_selectors.asp)
- W3Schools [JavaScript Reference](http://www.w3schools.com/jsref/), [JavaScript Regexp](http://www.w3schools.com/jsref/jsref_obj_regexp.asp)
- W3Schools [XPath, XQuery and XSLT Functions](http://www.w3schools.com/xpath/)

## Other

- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)
- [Markdown](http://daringfireball.net/projects/markdown/), [MultiMarkdown](http://fletcherpenney.net/multimarkdown/)

---

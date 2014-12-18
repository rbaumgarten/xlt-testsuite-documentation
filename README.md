<!-- <a href="https://gitter.im/dataduke/xlt-testsuite-documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter badge"></a> &nbsp; &nbsp; --> <a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# XLT SiteGenesis-Community-TestSuite

##### The Xceptance LoadTest (XLT) Script Developer SiteGenesis-Community-TestSuite contains a base test suite for functional test automation and load and performance testing of Demandware based shops systems. 
##### The test object of this test suite for [XLT Script Developer](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/) is the default demonstration implementation of the shop known as [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site).

## Versions

- XLT Script Developer: Version **4.5.0 alpha1**
- Demandware SiteGenesis: Version **15.1.0.14**

## Concept

By dividing the Demandware SiteGenesis shop in certain **page types** (like Homepage, Catalog Page or ProductDetailPage) a basic project structure for the SiteGenesis-Community-TestSuite inside of XLT Script Developer can be arranged accordingly. 

Hence **every page has its own module** with scripts that can interact with this page. This layer of interactions is **directly mapped** with the actions you can execute when you actually visit the page inside of your web browser. This means for every page certain interactions can be invoked by scripts (bundled in modules packages for each page type).

Each **test** can utilize these scripts from their pages module to create **workflows** that interact in a certain way with all pages to **simulate interactions** of a user with the shop system and to **evaluate assumptions** of business and technical scenarios of the shop system. All tests are bundled in packages matching their **scope of testing** (main purpose or shop area for validation).

## Structure

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

## Definitions

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

- **order**: purchase or buy products.
- **verify**: validate and assert values, information or elements.

# Framework

## Guide

_While shopping with your web browser at a shop you may change product attributes like color, size and quantity at a specific ProductDetailPage via clicking menu items or typing values inside of input fields._

With **XLT Script Developer** Firefox extension and **XLT SiteGenesis-Community-TestSuite** framework from GitHub it is easy to create test cases for the described scenario by following this short **step-by-step guide**:

- **Identify** the workflow you want to simulate by making a informal list of page interactions.
- **Search** for all interactions in the according modules inside of the test suite.
- **Create** a new testcase and drag and drop the needed scripts in the fitting order inside and specify all needed variables. You may also add local variables at the test package by right-clicking the tests packages and select "Manage Test Data".
- **Run** your tests as often as you like and enjoy the automized test execution with a warm cup of coffee and fluffy feeling of happiness!

## Test Data

The used **variables** are stored in **property** files. The variables are defined in the global test data property file `global_testdata.properties`, the package (module/tests) specific property files `package_testdata.properties` or annotated at the scripts (modules/tests) themselves. Each variable is inheritated in descending file tree order and may be overwritten. Caution: PLEASE DO NOT EDIT PROPERTY FILES WITH AN EXTERNAL TEXT EDITOR!

## Test Cases

Test Cases or short cases are the core compement of the test suite. A test case may consist out of pageflows and moduls that aggreggate page interactions. The bundled **tests script packages** are arranged by the business domain aspects of the shop. Every test may consist of a test setup, test start, test steps, and test end. 

### tests.account

- **TCreateAccount**: Register new user and validate account page.
- **TUpdatePersonalData**: Registers new user and changes personald data afterwards.

### tests.cart

- **TCart**: Add three products to cart and validate cart page with manipulation.

### tests.catalog

- **THomepage**: Validates global site elements and homepage.
- **TCatalogBrowsing**: Browse and validate homepage, catalog page, product detail page.

### tests.checkout

- **TGuestOrder**: Order random product via search with guest checkout via visa.
- **TNewCustomerOrder**: Order random product via search and checkout with new user via visa.
- **TReturningCusomerOrder**: Register new user and order random product via shop naviagtion and checkout with created user and via visa.

### tests.search

- **TSearch**: Search for color, product number and not existing search term with suggestion and validate results.
- **TSearchExtended**: Search for several products with advanced parameter usage and sorting.

## Pageflows

Pageflows or short flows are modeling actions that interact with multiple connected pages and therefor have to use different moduls from different packages to:

- mask unimportant but needed processes from the test developer (masking)
- reuse typical page set interaction (workflows).

#### Masking

In this context masking means to hide all page interactions that are essential for the main test focus but are not important for the test object themselves. Hence all need page module can be aggegrated into a single pageflow. 
__For example a specific flow can be used for test case setup and another for a test case teardown.__

#### Workflows

Another reason and example for using pageflows is to model complex but typical interactions with a set of pages. The intention of these pageflows is to be reusable inside different test case (also repetitivly) and also by other more advanved pageflows.
__For example** a pageflow might include: login to account, add shipping address and log out. You can reinvoke this pageflow several times to add as even more addresses as you like in one test case. Or you might use this flow as part of test setup pageflow in several test cases.__

## Modules

The bundled **modules script packages** are arranged by the pages of the shop they can be applied to. Every module has the ability to envoke actions, commands or reuse other modules to interact with the corresponding page.

## Scripting

In the following there are several examples to showcase possible ways for parameter handling and pattern matching strategies for string operations by utilization of regular expressions.

#### Remove trailing whitespace (ex: totals shipping)

    storeEval('"${block_totals_shipping}".trim()','${totals_shipping}')

#### Substring inclusive until last character (ex: creditcard number)

    storeEval('"${creditcard_number}".substring(12,16)','$'{creditcard_last_four_digits})

#### Substring exclusive until first occurence of character (ex: shipping method label)

    storeEval('"${shipping_method_label}".slice(0, "${shipping_method_label}".indexOf(‘:’)', '${shipping_method_name')
    storeEval('"${shipping_method_label}".match(/[^:]*/)', '${shipping_method_name')
    storeEval('"${shipping_method_label}".replace(/\:.*$/,"")', '${shipping_method_name')

#### Convert full english month name to number with two digits (ex: helper module)

    storeEval('("0" + ("January___February__March_____April_____May_______June______July______August____September_October___November__December__".indexOf("@{MMonthName}")/ 10 + 1)).slice(-2)', '$(month_number)');

#### Pattern matching for order date and order number (ex: order confirmation summary)

    assertText('css=#main .order-date .value','regexp:[A-Z][a-z]{2} [0-9]{2}, [0-9]{4}');
    assertText('css=#main .order-number .value','regexp:00[0-9]{6}');

#### Pattern matching for uppercased words by css (ex: column or navigation headers)

    assertText('css=#main .label .capitalized', 'regexpi:CaseInsensitive HEADER')

#### Pattern matching for any substring with asterisk (ex: shipping address)

    assertText('css=#main .shipping-address .city-state-postal', '*${state}*')

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

## Other Technology

- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)


<!-- <a href="https://gitter.im/dataduke/xlt-testsuite-documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter badge"></a> &nbsp; &nbsp; --> <a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# XLT SiteGenesis-Community-TestSuite

The Xceptance LoadTest (XLT) Script Developer SiteGenesis-Community-TestSuite contains a base test suite for functional test automation and load and performance testing of Demandware based shops systems. 
The test object of this test suite for [XLT Script Developer](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/) is the default demonstration implementation of the shop known as [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site).

- Name: SiteGenesis-Community-TestSuite
- Version: to be defined #todo
- Release: January 2015
- License: MIT License
- License URI: http://opensource.org/licenses/MIT
- Tags: load testing, performance testing, testing
- Contributors:
    - Benjamin Nothurft, Xceptance Software Technologies GmbH
    - Robert Baumgarten, Xceptance Software Technologies GmbH
    - René Schwietzke, Xceptance Software Technologies GmbH
- Prerequisites:
    - XLT Script Developer Version: 4.5.0 alpha1
    - Demandware SiteGenesis Version: 15.1.0.14


## Intention

As we had already build more comlex test suites for SiteGenesis we realized it is time to incoporate all our gained expierence and knowledge base inside a compulsive, non redundant, well defined and clearly structured package. 

We want you, our customer, to profit from this piece of condensed high quality testing best practises collected over dozens of projects and collaborativly shared ideas inside our circle of coworkers over the past decade.

Hence this test suite is released into public to be used, extend, improved and fully adapted to your specific needs. The test suite is here to serve the community and wil be extended in the future with our future best practises so it will always represent state of the art test automation as we provide it as a paid service to ur customers.

> It is a representation of shared and collected testing expierence, applicable knowledge and think tank for best practises as well as compulsive ideas in test automation. 
Every test automation project may be able to profit from the incopareted concepts of this test suite. It doesn't matter if you build want to build a suite for a shop systems (ecommerce) or other web appications. The underlying principial are the same. The test object Demandware SiteGenesis is just one specific example to serves as reference.

## Use Cases

The test suite is a handy reference for everybody interested in test automation:

__Introduction -__ If you are new to test automation in general this test suite may be serve as helpful demonstration for how test automation works. Furthermore it is also a great entry point for your first project to learn about building a test automation suite. Due to it's easy structure it can enhance your learning curve with XLT Script Developer and guide you in the right direction for script modularization.

__Existing Projects -__ As an collection of examples and concepts the test suite may serve as an idea generator for your quality asssurance wether beeing a singular quality assurance engineer integrated in a development team, dynamic team roles or a completly seperated QA team there are also quite advanced ideas you may and your organization may profit of.

__New Projects -__ For all demandware customers starting with SiteGenesis as their shop template and customizing and extending it form there our test suite can provide a perfect fit for test automation at the inital project stage.

## Tests

The aim of our test set is to cover all standard functions of the shop system. Every test simulates a shopping behaviour of a customer. Regarded closy a test even focuses on specific part of buying process which is tested in depth. This test focus defines, where the test case file is placed inside the shop-area-driven test case package structure of the test suite. 

__All tests cover a wide variety of different test pathes and are build up on script modules.__

> Each test consists of a test setup (ensuriing that all preconditions are met), a test scope (focusing on all relevant testing steps) and a test teardown (cleaning up of all changed data in your browser and reversing the state of the shop system to its origin).


## Modules

A module is script containing commands and comments. Each module interacts with elements of the website. Thus all modules are packaged by their belonging website. Each module can be reused by different tests. 

All modules are named with "M" as first letter but to clearify the structure even further we decided to outline special modules:

__Validation -__ Very important to the testing is the validation of website elements and dynamic data. These modules evalute via assertion that a fit criterion is meet. To make this clear we decided to name these modules with "V" fo validation as first letter.

__Flow -__ Sometimes you have a very long setup procedure that you want to mask when you open a test inside of XLT Script Developer. FOr example you need to create an account or add several products to cart before the actual beginning of your test scope. Obviously the needed steps cover several websites or longer processes but are tieght closly together by their objective. We decided to consolidate these steps into flow modules and mark them with an "F" as first letter. Each flow may use several modules from different pages to achieve a distinct objective. A flow has defined starting and end point. To make it is as easy as possible a flow should start and end at the same page. The starting point defines the first word of it's name and the script location inside the package structure.


## Installation

You need the following prequesites (all links can be found in references):

__Xceptance XLT Script Developer -__ Just download our firefox extension form mozzilla or our company website.

__DemandWare SiteGenesis Shop -__ We provide you with a public instance of SiteGenesis but you can also choose to setup your own. For further infomration please rely on Demandware.

__XLT Community Test Suite -__ Download this test suite and unzip it on your disc.


## First Run

Next open xlt script developer and click the folder icon above the left navigation to import an existing testing project. Choose the unzipped community test suite. Now you may already run the first tests. If you want to use your own shop instance go to glabal test data and change the storefront url to your web address.

## Configuration

__XLT -__ You may download xlt form our webiste and run the scripts via your IDE and a selenium webdriver. For further configuration please rely on our XLT doucumentation online.

## Guide


### Prefered Naming Conventions


## Feature Backlog

All planned features (ex: new tests or modules) for the furture are tracked as issues at the GitHub project repository.

## Examples

## References

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



# Guideline

## Scenario

_While shopping with your web browser at a shop you may change product attributes like color, size and quantity at a specific ProductDetailPage via clicking menu items or typing values inside of input fields._

## Step-by-Step

With **XLT Script Developer** Firefox extension and **XLT SiteGenesis-Community-TestSuite** framework from GitHub it is easy to create test cases for the described scenario by following this short **step-by-step guide**:

- **Identify** the workflow you want to simulate by making an informal list of page interactions.
- **Search** for all interactions in the according modules inside of the test suite.
- **Create** a new testcase and drag and drop the needed scripts form pageflow and modules packages in the fitting order into the testcase and specify all needed variables. You may also add local variables at the test package by right-clicking the tests packages and select "Manage Test Data".
- **Run** your tests as often as you like and enjoy the automized test execution with a warm cup of coffee and fluffy feeling of happiness!

## Fundamentals

By dividing the Demandware SiteGenesis shop in certain **page types** (like Homepage, Catalog Page or ProductDetailPage) a basic project structure for the SiteGenesis-Community-TestSuite inside of XLT Script Developer can be arranged accordingly. This allows us to follow a strict **PAGING CONCEPT** when building and extending this testsuite!

Hence **every page has its own module** with scripts that can interact with this page. This layer of interactions is **directly mapped** with the actions you can execute when you actually visit the page inside of your web browser. This means for every page certain interactions can be invoked by scripts (bundled in modules packages for each page type).

More complex sets of interactions with several connected pages can be used and aggregate in scripts for **pageflows**.

Each **test** can utilize these scripts (**pageflows** and **pagemodules**) to create **workflows** that interact in a certain way with all pages to **simulate interactions** of a user with the shop system and to **evaluate assumptions** of business and technical scenarios of the shop system. All tests are bundled in packages matching their **scope of testing** (main purpose or shop area for validation).

## Architecture

    ToDo [img-test-pyramid]

## Examples

In the following there are several scripting examples to showcase possible ways for parameter handling and pattern matching strategies for string operations by utilization of regular expressions.

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


# Framework

Following is an explantion of used abbreviations for place holders of parameter names.

- `{name}` are obligatory parameter names. 
- `[name]` are optional parameter names.

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

## Naming

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

## Test Data

The used **variables** are stored in **property** files. The variables are defined in the global test data property file `global_testdata.properties`, the package (module/tests) specific property files `package_testdata.properties` or annotated at the scripts (modules/tests) themselves. Each variable is inheritated in descending file tree order and may be overwritten. Caution: PLEASE DO NOT EDIT PROPERTY FILES WITH AN EXTERNAL TEXT EDITOR!

## Tests

Test Cases or short cases are the core compement of the test suite. A test case may consist out of pageflows and moduls that aggreggate page interactions. The bundled **tests script packages** are arranged by the business domain aspects of the shop. Every test may consist of a test setup, test start, test steps, and test end. 

### tests.account

- **TAccountRegisterCreate**: Register new user and validate account page.
- **TAccountUpdatePersonalData**: Registers new user and changes personald data afterwards.

### tests.browse

- **TBrowseHomepage**: Validates global site elements and homepage.
- **TBrowseCatalog**: Browse and validate homepage, catalog page, product detail page.
- **TBrowseProductDetailPage**:

### tests.carts

- **TCartBasics**: Add three products to cart and validate cart page with manipulation.
- **TCartExtended**:
- **TMiniCartBasics**:
- **TMiniCartExtended**:

### tests.checkouts

- **TCheckoutGuest**: Order random product via search with guest checkout via visa.
- **TCheckoutNewCustomer**: Order random product via search and checkout with new user via visa.
- **TCheckoutReturningCustomer**: Register new user and order random product via shop naviagtion and checkout with created user and via visa.

### tests.search

- **TSearchBasics**: Search for color, product number and not existing search term with suggestion and validate results.
- **TSearchExtended**: Search for several products with advanced parameter usage and sorting.

## Flows

Pageflows or short flows are modeling actions that interact with multiple connected pages and therefor have to utilize moduls from different packages. The intention of a pageflow might be to mask unimportant but needed processes from the test developer (masking) or enable reuse of typical page interaction sets (reutilization).

In this context masking means to hide a set of multiple page interactions that are essential to the test case itself but are not important to the test focus of the test case. Hence all needed interactions can be aggegrated into a single pageflow and be gently hidden when opening a test case inside the XLT script developer.  Another reason and example for using pageflows is to model complex but typical interactions with a set of pages. The intention of these pageflows is to be reusable inside different test case (also repetitivly) and also by other more advanved pageflows.

### flows.{page}

Pageflows might be arranged in seperate packages named after the startpage to mimic the already established pageing concept for modules.  

_For example a pageflow might include: login to account, add shipping address and log out. You can reinvoke this pageflow several times to add as even more addresses as you like in one test case. Or you might use this flow as part of test setup pageflow in several test cases._

### flows.helper

Some pageflows might use the same set of interactions or might need help to enable several interactions. These essential scripts for main pageflows are located in a seperate helper package.  

_For example a specific flow can be used for test case setup and another for a test case teardown._

## Modules

The bundled **modules script packages** are arranged by the pages of the shop they can be applied to. Every module has the ability to envoke actions, commands or reuse other modules to interact with the corresponding page.

### modules.pages.{page}

Modules focusing on specific interaction with page parts.  
_Example: enter, select or choose data of test/page/product, store data form current page, validate current page elements, text or values._

### modules.helper

Modules to enable othe page interactions from other main modules. Thus these helper modules are sometimes also reused by several page modules.


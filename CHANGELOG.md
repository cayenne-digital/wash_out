# Changelog

## 0.5.0

* WSSE password authentication [@dhinus][]
* Ruby 1.8 compatibility restores [@dhinus][]

## 0.4.2

* SOAP hrefs are now supported [@inossidabile][]
* Better camelization: reusable types and methods are now supported [@inossidabile][]

## 0.4.1

* .NET-compliant :integer type WSDL [@inossidabile][]

## 0.4.0

* Better content-type for the response (#33) [@inossidabile][]
* Date type support (#18) [@inossidabile][]
* Avoid duplication of inner types [@inossidabile][]
* Output camelization support [@inossidabile][]
* External types declaration support (#21, #41) [@inossidabile][]

## 0.3.7

* Better empty parameters handling (#26, #30) [@rngtng][]

## 0.3.6

* Unicorn stream reading bug (#20)
* .NET minOccurs/maxOccurs basic WSDL compatibility (#22, #23)

## 0.3.5

* Very evil thread-safety bug fixed. You are encouraged to never use anything below this version.

## 0.3.4

* WSDL generation fixed to support complex structures for return values
* Configuration moved to OrderedOptions with proper Engine binding
* `snakecase` configuration directive added: if set to false, wash_out won't modify params keys

## 0.3.3

* Tiny fixes in wash_out behavior with inline arrays (#11, #12)
* Ability to change namespace

## 0.3.2

* WashOut doesn't check existance of parameters anymore you should do it yourself from now
* Proper handling of blank parameters (#10)
* Proper handling of complex structures inside arrays (#9)
* Response performance improved

## 0.3.1

* Support of complex structures inside array
* Better Nori handling (no more dependency on Savon hijacking)

## 0.3.0

* The syntax for empty set (no input params or output params) changed from [] to nil.
* SOAP response format improved. All results are now wrapped into tns:messages instead of soap:Body.
* Arrays (minOccurs/maxOccurs) are now supported with `:foo => [:integer]` syntax.

[@inossidabile]: https://twitter.com/#!/_inossidabile
[@rngtng]: https://github.com/rngtng
[@dhinus]: https://github.com/dhinus
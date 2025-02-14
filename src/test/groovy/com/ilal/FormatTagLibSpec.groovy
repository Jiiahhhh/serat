package com.ilal

import grails.testing.web.taglib.TagLibUnitTest
import spock.lang.Specification

class FormatTagLibSpec extends Specification implements TagLibUnitTest<FormatTagLib> {

     void "test simple tag as method"() {
       expect:
       tagLib.simple()
     }
}

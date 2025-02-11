package com.ilal

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class DetailControllerSpec extends Specification implements ControllerUnitTest<DetailController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}

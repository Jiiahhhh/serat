// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.ilal.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.ilal.UserRole'
grails.plugin.springsecurity.authority.className = 'com.ilal.Role'
grails.plugin.springsecurity.auth.loginFormUrl = '/login'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/login?error=true'
grails.plugin.springsecurity.logout.afterLogoutUrl = '/login'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/image/**', access: ['permitAll']],
        [pattern: '/home/**', access: ['permitAll']],
        [pattern: '/search/**', access: ['permitAll']],
        [pattern: '/detail/**', access: ['permitAll']],
        [pattern: '/register/**', access: ['permitAll']],
        [pattern: '/profile/**', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**', filters: 'JOINED_FILTERS']
]
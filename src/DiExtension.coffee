TemplateFactory = require './TemplateFactory'
TemplateLoader = require './TemplateLoader'


class TemplatesExtension extends Miwo.di.InjectorExtension


	init: ->
		@setConfig
			baseUrl: '<%baseUrl%>'
			dir: '/dist/templates'
		return


	build: (injector) ->
		injector.define 'templateFactory', TemplateFactory

		injector.define 'templateLoader', TemplateLoader, (service)=>
			service.baseUrl = @config.baseUrl
			service.templatesDir = @config.dir
			return
		return



module.exports = TemplatesExtension
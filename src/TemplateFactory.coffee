Template = require './Template'


class TemplateFactory extends Miwo.Object

	templateRendererFactory: @inject('templateRendererFactory')
	templateLoader: @inject('templateLoader')


	createTemplate: ->
		template = new Template(@templateRendererFactory.create())
		template.setLoader(@templateLoader)
		return template


module.exports = TemplateFactory
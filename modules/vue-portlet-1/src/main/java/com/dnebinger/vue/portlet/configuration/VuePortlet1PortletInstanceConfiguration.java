package com.dnebinger.vue.portlet.configuration;

import aQute.bnd.annotation.metatype.Meta;
import com.liferay.portal.configuration.metatype.annotations.ExtendedObjectClassDefinition;

/**
 * class VuePortlet1PortletInstanceConfiguration: The instance configuration interface.
 *
 * @author dnebinger
 */
@ExtendedObjectClassDefinition(
	category = "other",
	scope = ExtendedObjectClassDefinition.Scope.PORTLET_INSTANCE
)
@Meta.OCD(
	localization = "content/Language",
	name = "VuePortlet1.portlet.instance.configuration.name",
	id = "com.dnebinger.vue.portlet.configuration.VuePortlet1PortletInstanceConfiguration"
)
public interface VuePortlet1PortletInstanceConfiguration {

	@Meta.AD(deflt = "false", required = false)
	public boolean flagOne();

	@Meta.AD(deflt = "false", required = false)
	public boolean flagTwo();

}

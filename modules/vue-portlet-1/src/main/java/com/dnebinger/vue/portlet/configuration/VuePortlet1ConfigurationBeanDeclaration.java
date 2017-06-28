package com.dnebinger.vue.portlet.configuration;

import com.liferay.portal.kernel.settings.definition.ConfigurationBeanDeclaration;
import org.osgi.service.component.annotations.Component;

/**
 * class VuePortlet1ConfigurationBeanDeclaration: The configuration bean declaration class for
 * the configuration bean definition.
 *
 * @author dnebinger
 */
@Component
public class VuePortlet1ConfigurationBeanDeclaration implements ConfigurationBeanDeclaration {
	@Override
	public Class<?> getConfigurationBeanClass() {
		return VuePortlet1PortletInstanceConfiguration.class;
	}
}

package com.dnebinger.vue.portlet.configuration;

import com.dnebinger.vue.portlet.PortletKeys;
import com.liferay.portal.kernel.settings.definition.ConfigurationPidMapping;
import org.osgi.service.component.annotations.Component;

/**
 * class VuePortlet1PortletInstanceConfigurationPidMapping: The vue.js portlet instance configuration pid mapping.
 *
 * @author dnebinger
 */
@Component
public class VuePortlet1PortletInstanceConfigurationPidMapping implements ConfigurationPidMapping {

	@Override
	public Class<?> getConfigurationBeanClass() {
		return VuePortlet1PortletInstanceConfiguration.class;
	}

	@Override
	public String getConfigurationPid() {
		return PortletKeys.KEY;
	}
}

package com.dnebinger.vue.action;

import com.dnebinger.vue.portlet.PortletKeys;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.portlet.ConfigurationAction;
import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

/**
 * class VuePortlet1ConfigurationAction: Configuration action handler for the vue.js portlet.
 *
 * @author dnebinger
 */
@Component(
	immediate = true,
	property = {
		"javax.portlet.name=" + PortletKeys.KEY
	},
	service = ConfigurationAction.class
)
public class VuePortlet1ConfigurationAction extends DefaultConfigurationAction {

	@Override
	public String getJspPath(HttpServletRequest httpServletRequest) {
		return "/configuration.jsp";
	}

	@Override
	public void processAction(
		PortletConfig portletConfig, ActionRequest actionRequest,
		ActionResponse actionResponse)
		throws Exception {

		String flagOne = getParameter(actionRequest, "flagOne");
		String flagTwo = getParameter(actionRequest, "flagTwo");

		if (_log.isDebugEnabled()) {
			_log.debug("flagOne = " + flagOne);
			_log.debug("flagTwo = " + flagTwo);
		}

		setPreference(actionRequest, "flagOne", flagOne);
		setPreference(actionRequest, "flagTwo", flagTwo);

		super.processAction(portletConfig, actionRequest, actionResponse);
	}

	@Override
	@Reference(
		target = "(osgi.web.symbolicname=com.dnebinger.vue.web.one)",
		unbind = "-"
	)
	public void setServletContext(ServletContext servletContext) {
		super.setServletContext(servletContext);
	}

	private static final Log _log = LogFactoryUtil.getLog(VuePortlet1ConfigurationAction.class);
}

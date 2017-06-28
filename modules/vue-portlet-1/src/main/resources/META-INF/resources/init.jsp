<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %><%@
taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %><%@
taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %><%@
taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/frontend" prefix="liferay-frontend" %>

<%@ page
        import="com.dnebinger.vue.portlet.configuration.VuePortlet1PortletInstanceConfiguration" %>
<%@ page import="com.liferay.portal.kernel.module.configuration.ConfigurationProviderUtil" %>
<%@ page import="com.liferay.portal.kernel.settings.PortletInstanceSettingsLocator" %>
<%@ page import="com.liferay.portal.kernel.util.Constants" %>
<%@ page import="com.liferay.portal.kernel.settings.ParameterMapSettingsLocator" %>
<%@ page import="com.liferay.portal.kernel.util.Validator" %>
<%@ page
        import="com.liferay.portal.kernel.security.permission.PermissionChecker" %>
<%@ page import="com.liferay.portal.kernel.model.Organization" %>
<%@ page import="com.liferay.portal.kernel.security.permission.ActionKeys" %>

<liferay-frontend:defineObjects />

<liferay-theme:defineObjects />

<portlet:defineObjects />

<%
    VuePortlet1PortletInstanceConfiguration portletInstanceConfig =
            ConfigurationProviderUtil.getConfiguration(VuePortlet1PortletInstanceConfiguration.class,
                    new PortletInstanceSettingsLocator(themeDisplay.getLayout(), portletDisplay.getId()));

    PermissionChecker pc;

    pc.hasPermission(null, Organization.class.getName(), Organization.class.getName(), ActionKeys.VIEW);
%>


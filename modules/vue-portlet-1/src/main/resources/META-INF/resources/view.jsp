<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="vue-portlet-1.caption"/></b>
</p>
<p><liferay-ui:message key="caption.flag.one"/> <%= String.valueOf(portletInstanceConfig.flagOne()) %></p>
<p><liferay-ui:message key="caption.flag.two"/> <%= String.valueOf(portletInstanceConfig.flagTwo()) %></p>

<aui:script>

var <portlet:namespace/>portletPreferences = {
	flag: {
		one: <%= portletInstanceConfig.flagOne() %>,
		two: <%= portletInstanceConfig.flagTwo() %>
	}
};

var <portlet:namespace/>permissions = {
	<c:if test="Validator.isNotNull(permissionChecker)">
		isSignedIn: <%= permissionChecker.isSignedIn() %>,
		isOmniAdmin: <%= permissionChecker.isOmniAdmin() %>,
		hasViewOrgPermission: <%= permissionChecker.hasPermission(null, Organization.class.getName(), Organization.class.getName(), ActionKeys.VIEW) %>
	</c:if>
	<c:if test="Validator.isNull(permissionChecker)">
		isSignedIn: false,
		isOmniAdmin: false,
		hasViewOrgPermission: false
	</c:if>
};

var <portlet:namespace />languageKeys = {
	accessDenied: '<liferay-ui:message key="access-denied" />',
	active: '<liferay-ui:message key="active" />',
	localCustomMessage: '<liferay-ui:message key="local-custom-message" />'
};
</aui:script>


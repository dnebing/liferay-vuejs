<%@ include file="/init.jsp" %>

<p>
	<b><liferay-ui:message key="vue-portlet-1.caption"/></b>
</p>
<p><liferay-ui:message key="caption.flag.one"/> <%= String.valueOf(portletInstanceConfig.flagOne()) %></p>
<p><liferay-ui:message key="caption.flag.two"/> <%= String.valueOf(portletInstanceConfig.flagTwo()) %></p>


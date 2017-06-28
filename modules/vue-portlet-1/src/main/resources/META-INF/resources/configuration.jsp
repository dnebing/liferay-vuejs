<%@ include file="/init.jsp" %>

<%
	portletInstanceConfig = ConfigurationProviderUtil.getConfiguration(
			VuePortlet1PortletInstanceConfiguration.class,
			new ParameterMapSettingsLocator(request.getParameterMap(),
					new PortletInstanceSettingsLocator(themeDisplay.getLayout(),
							portletDisplay.getPortletResource())));
%>
<liferay-portlet:actionURL portletConfiguration="<%= true %>" var="configurationActionURL" />

<liferay-portlet:renderURL portletConfiguration="<%= true %>" var="configurationRenderURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
	<aui:input name="redirect" type="hidden" value="<%= configurationRenderURL %>" />

	<div class="portlet-configuration-body-content">
		<div class="container-fluid-1280">
			<aui:fieldset-group markupView="lexicon">
				<aui:fieldset>
					<aui:input label="config.flag.one" name="preferences--flagOne--"
							   type="toggle-switch" value="<%= portletInstanceConfig.flagOne() %>" />
					<aui:input label="config.flag.two" name="preferences--flagTwo--"
							   type="toggle-switch" value="<%= portletInstanceConfig.flagTwo() %>" />
				</aui:fieldset>
			</aui:fieldset-group>
		</div>
	</div>

	<aui:button-row>
		<aui:button cssClass="btn-lg" type="submit" />
	</aui:button-row>
</aui:form>



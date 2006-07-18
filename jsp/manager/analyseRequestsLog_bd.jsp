<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %><html:xhtml/><%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %><%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %><%@ taglib uri="/WEB-INF/taglibs-datetime.tld" prefix="dt" %><h2><bean:message bundle="MANAGER_RESOURCES" key="manager.monitor.requests.title"/></h2><br /><logic:present name="profiles">	<bean:define id="logDirName" name="monitorRequestLogsPathForm" property="logDirName"/>	<bean:define id="logFileName" name="logFileName"/>	<bean:define id="logPathBar"><%= request.getContextPath() %>/images/logs/<%= logFileName %>.bar.png</bean:define>	<!-- <img alt="" src="<%= logPathBar %>"/> -->	<bean:define id="logPathTimeline"><%= request.getContextPath() %>/images/logs/<%= logFileName %>.timeline.png</bean:define>	<!-- <img alt="" src="<%= logPathTimeline %>"/> -->	<table>			<tr>				<th class="listClasses-header">				</th>				<th class="listClasses-header">				</th>				<th class="listClasses-header">					<bean:message bundle="MANAGER_RESOURCES" key="manager.monitor.services.averageExecutionTime"/>				</th>				<th class="listClasses-header">					<bean:message bundle="MANAGER_RESOURCES" key="manager.monitor.services.totalExecutionTime"/>				</th>				<th class="listClasses-header">					<bean:message bundle="MANAGER_RESOURCES" key="manager.monitor.services.numberTimesCalled"/>				</th>			</tr>		<logic:iterate indexId="i" id="profile" name="profiles">			<tr>				<td class="listClasses">					<%= i.intValue() + 1 %>				</td>				<td class="listClasses">					<bean:write name="profile" property="requestPath"/>				</td>				<td class="listClasses">					<bean:write name="profile" property="averageExecutionTime"/>				</td>				<td class="listClasses">					<bean:write name="profile" property="executionTime"/>				</td>				<td class="listClasses">					<bean:write name="profile" property="numberCalls"/>				</td>			</tr>		</logic:iterate>	</table></logic:present>
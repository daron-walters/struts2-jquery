<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<div id="formResult" class="result ui-widget-content ui-corner-all">formResult div</div>

<s:form id="form" action="echo" namespace="/">
  <s:label for="echo">Echo</s:label>
  <s:textfield id="echo" name="echo" value="something to echo"/>
</s:form>
<sj:submit id="formsubmit" formIds="form" targets="formResult" value="Submit Form" button="true"/>


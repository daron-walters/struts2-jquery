<?xml version="1.0" encoding="utf-8"?>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Struts2 jQuery Plugin Showcase</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />    
	<meta http-equiv="keywords" content="struts2,jquery,plugin,showcase" />
	<meta http-equiv="description" content="A Showcase for the Struts2 jQuery Plugin" />
	<link href="styles/layout.css" rel="stylesheet" type="text/css" />
	<!--[if lte IE 7]>
	<link href="styles/patch_layout.css" rel="stylesheet" type="text/css" />
	<![endif]-->

  <s:if test="%{theme == 'showcase' || theme == null}">
      <sj:head jqueryui="true" jquerytheme="showcase" customBasepath="themes" loadFromGoogle="%{google}"/>
  </s:if>
  <s:else>
      <sj:head jqueryui="true" jquerytheme="%{theme}" loadFromGoogle="true" loadFromGoogle="%{google}"/>
  </s:else>
  <script type="text/javascript" src="js/showcase.js"></script>
</head>
<body>
  <div class="page_margins">
    <div class="page">
      <div id="header" class="ui-widget-header">
        <div id="themebox">
            <s:form id="themeform" action="index" theme="simple">
                <div>
                <s:select id="theme" name="theme" list="themes" emptyOption="true"/><br/>
                <s:checkbox id="google" name="google"/><label for="google" style="padding: 3px;">Load jQuery from Google CDN</label><br/>
                <s:submit value="Change Theme" cssClass="buttonlink ui-state-default ui-corner-all"/>
                </div>
            </s:form>
        </div>
        <div id="headline">
	        <h1 class="ui-state-default" style="background: none; border: none;">Struts2 jQuery Plugin Showcase</h1>
	        <h4 class="ui-state-default" style="background: none; border: none;">Version 1.0.1</h4>
        </div>
      </div>
      <div id="nav">
        <div class="hlist ui-widget-header">
          <ul>
            <li class="ui-widget-header ui-state-active"><s:url id="urltabs" action="tabs"/><sj:a href="%{urltabs}" targets="main">Tabs</sj:a></li>
            <li class="ui-widget-header"><s:url id="urldatepicker" action="datepicker"/><sj:a href="%{urldatepicker}" targets="main">Datepicker</sj:a></li>
            <li class="ui-widget-header"><s:url id="urldialog" action="dialog"/><sj:a href="%{urldialog}" targets="main">Dialog</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlaccordion" action="accordion"/><sj:a href="%{urlaccordion}" targets="main">Accordion</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlslider" action="slider"/><sj:a href="%{urlslider}" targets="main">Slider</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlprogressbar" action="progressbar"/><sj:a href="%{urlprogressbar}" targets="main">Progressbar</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlremotelink" action="remote-link"/><sj:a href="%{urlremotelink}" targets="main">Remote Link</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlform" action="form"/><sj:a href="%{urlform}" targets="main">Forms</sj:a></li>
            <li class="ui-widget-header"><s:url id="urlremotediv" action="remote-div"/><sj:a href="%{urlremotediv}" targets="main">Remote Div</sj:a></li>
            <li class="ui-widget-header"><s:url id="urleffectdiv" action="effect-div"/><sj:a href="%{urleffectdiv}" targets="main">Effect Div</sj:a></li>
            <li class="ui-widget-header"><a href="http://code.google.com/p/struts2-jquery/downloads/list">Download</a></li>
            <li class="ui-widget-header"><a href="http://code.google.com/p/struts2-jquery/w/list">Wiki</a></li>
          </ul>
        </div>
      </div>
      <sj:div id="main" href="%{urltabs}">
        <img id="indicator" src="images/indicator.gif" alt="Loading..."/>
      </sj:div>
      <!-- begin: #footer -->
      <div id="footer">
        Written by  <a href="http://www.jgeppert.com" title="Java Developer Blog">Johannes Geppert</a><br/>
        Hosted by  <a href="http://www.weinfreund.de" title="Wein vom Weingut, Weinforum, Wein Community">weinfreund.de</a><br/>
        Layout based on <a href="http://www.yaml.de/" title="OpenSource CSS Layout">YAML</a>
      </div>
    </div>
  </div>
</body>
</html>
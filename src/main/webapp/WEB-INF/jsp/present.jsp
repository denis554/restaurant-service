<%--
    Document   : present
    Author     : Andrey Svininykh (svininykh@gmail.com)
    Copyright  : Nord Trading Network
    License    : Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.html)
--%>

<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<stripes:layout-render name="/WEB-INF/jsp/common/layout_main.jsp"
                       title="Home"
                       pageid="home">

    <stripes:layout-component name="header.title">
        Project NORD POS mobi
    </stripes:layout-component>

    <stripes:layout-component name="button.action">
        <sdynattr:link href="/Presentation.action"
                       event="info"
                       class="ui-btn ui-corner-all ui-icon-info ui-btn-icon-notext"
                       role="button">
            <stripes:label name="label.info" />
        </sdynattr:link>
    </stripes:layout-component> 

    <stripes:layout-component name="content">
        <div class="ui-body">            
            <a href="http://www.nordpos.mobi">
                <img src="<c:url value='/image/logo.png' />" alt="NORD POS mobi"/>
            </a>            
            <h2><stripes:label name="label.present" /></h2>
            <stripes:errors />
            <stripes:form action="/CategoryList.action">                
                <sdynattr:submit name="catalog" data-theme="a" />
            </stripes:form>
        </div>
    </stripes:layout-component>

    <stripes:layout-component name="footer">

    </stripes:layout-component>
</stripes:layout-render>

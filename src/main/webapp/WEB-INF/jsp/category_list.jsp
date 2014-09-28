<%--
    Document   : category_list
    Author     : Andrey Svininykh (svininykh@gmail.com)
    Copyright  : Nord Trading Network
    License    : Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.html)
--%>

<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<stripes:layout-render name="/WEB-INF/jsp/common/layout_main.jsp"
                       title="Product Category"
                       pageid="ProductCategory">

    <stripes:layout-component name="button.return">
        <sdynattr:link href="/Presentation.action"
                       class="ui-btn ui-shadow ui-corner-all ui-icon-home ui-btn-icon-notext">            
        </sdynattr:link>          
    </stripes:layout-component>

    <stripes:layout-component name="header.title">
        <stripes:label name="label.ProductCategory"/>
    </stripes:layout-component>

    <stripes:layout-component name="button.action">
        <sdynattr:link href="/ProductCategory.action"
                       event="change"                       
                       class="ui-btn ui-shadow ui-corner-all ui-icon-action ui-btn-icon-left"
                       data-prefetch="true">
            <stripes:label name="label.add" />
        </sdynattr:link>          
    </stripes:layout-component>

    <stripes:layout-component name="content">
        <ul data-role="listview" 
            data-filter="true" 
            data-filter-placeholder="${actionBean.getLocalizationKey("label.ProductCategory.search")}"
            data-inset="true">
            <c:forEach items="${actionBean.categoryList}" var="category">                
                <li>
                    <c:out value="${category.name}"/>
                </li>
            </c:forEach>
        </ul>
    </stripes:layout-component>

    <stripes:layout-component name="footer">

    </stripes:layout-component>
</stripes:layout-render>

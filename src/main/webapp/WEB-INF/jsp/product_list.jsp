<%--
    Document   : product_list
    Author     : Andrey Svininykh (svininykh@gmail.com)
    Copyright  : Nord Trading Network
    License    : Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.html)
--%>

<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<stripes:layout-render name="/WEB-INF/jsp/common/layout_main.jsp"
                       title="Product Category View"
                       pageid="ProductCategoryView">

    <stripes:layout-component name="button.return">
        <sdynattr:link href="/Presentation.action"
                       class="ui-btn ui-shadow ui-corner-all ui-icon-home ui-btn-icon-notext">            
            <stripes:label name="label.home" />
        </sdynattr:link>    
        <sdynattr:link href="/ProductCategory.action"
                       class="ui-btn ui-corner-all ui-icon-bars ui-btn-icon-left"
                       data-prefetch="true">
            <stripes:label name="label.categories" />
        </sdynattr:link>         
    </stripes:layout-component>

    <stripes:layout-component name="header.title">
        <c:out value="${actionBean.productCategory.name}"/>
    </stripes:layout-component>

    <stripes:layout-component name="button.action">
        <sdynattr:link href="/Product.action"
                       event="create"                       
                       class="ui-btn ui-shadow ui-corner-all ui-icon-action ui-btn-icon-left"
                       data-prefetch="true">
            <stripes:param name="categoryId" value="${actionBean.productCategory.id}"/>
            <stripes:label name="label.create" />
        </sdynattr:link>          
    </stripes:layout-component>

    <stripes:layout-component name="content">
        <stripes:messages/>
        <ul data-role="listview" 
            data-filter="true" 
            data-filter-placeholder="${actionBean.getLocalizationKey("label.Product.search")}"
            data-inset="true"
            data-split-icon="edit" data-split-theme="a">
            <c:forEach items="${actionBean.productList}" var="product">                
                <li>
                    <a><c:out value="${product.name}"/>
                        <p class="ui-li-aside">
                            <strong>
                                <fmt:formatNumber value="${product.priceSell}"
                                                  type="CURRENCY"
                                                  pattern="#0.00 ¤"                                                  
                                                  maxFractionDigits="2" 
                                                  minFractionDigits="2"/>
                            </strong>
                        </p>
                    </a>
                    <a>
                        <%--<stripes:param name="productId" value="${product.id}"/>
                        <stripes:label name="label.edit" />--%>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </stripes:layout-component>

    <stripes:layout-component name="footer">

    </stripes:layout-component>
</stripes:layout-render>

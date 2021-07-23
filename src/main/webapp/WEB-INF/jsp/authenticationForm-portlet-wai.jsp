<%--

    Licensed to EsupPortail under one or more contributor license
    agreements. See the NOTICE file distributed with this work for
    additional information regarding copyright ownership.

    EsupPortail licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file except in
    compliance with the License. You may obtain a copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="portlet" uri="http://java.sun.com/portlet_2_0"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<portlet:defineObjects />

<c:set var="n">
  <portlet:namespace />
</c:set>

<link rel="stylesheet" href="/esup-filemanager/css/esup-stock-wai.css" type="text/css" media="screen, projection">


<portlet:actionURL var="authenticationFormWai" escapeXml="false">
  <portlet:param name="action" value="formAuthenticationWai"/>
  <portlet:param name="dir" value="${currentDir}"/>
</portlet:actionURL>


<div class="esupstock">

  <div class="portlet-section">

    <div class="portlet-section-body">


      <div id="info-toolbar">
        <c:if test="${!empty msg}">
          <spring:message code="${msg}"/>
        </c:if>
      </div>


      <form:form method="post" id="authenticationForm" action="${authenticationFormWai}">

        <input type="hidden" id="currentDir" value="${currentDir}"/>

        <label for="username">
          <spring:message code="auth.username"/>
        </label>
        <input type="text" name="username" value="${username}"/>

        <label for="password">
          <spring:message code="auth.password"/>
        </label>
        <input type="password" name="password" value="${password}"/>

        <input type="submit" id="submit" value="<spring:message code="auth.submit"/>"/>
        
        <a href="<portlet:renderURL><portlet:param name="action" value="browseWai"/><portlet:param name="dir" value="${parentDir}"/></portlet:renderURL>">
            <spring:message code="auth.cancel"/>
        </a>

      </form:form>

    </div>

  </div>

</div>




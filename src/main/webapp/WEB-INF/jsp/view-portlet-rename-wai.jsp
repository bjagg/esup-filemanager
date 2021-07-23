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


<portlet:actionURL var="formRenameWai" escapeXml="false">
  <portlet:param name="action" value="formRenameWai"/>
  <portlet:param name="dir" value="${currentDir}"/>
  <portlet:param name="filesToRename" value="${files}"/>
</portlet:actionURL>


<div class="esupstock">

  <div class="portlet-section">

    <div class="portlet-section-body">

      <form:form action="${formRenameWai}" method="post">

        <ul id="jqueryFileTreeWai">

          <c:forEach var="file" items="${files}">
            <li class="browserlist">
       		 <label>
          		${file.title}
      		  </label>
       		 <input type="text" name="${file.encPath}" value="${file.title}"/>
       		</li>
		</c:forEach>
		
		</ul>
        
        <input type="submit" value="<spring:message code="toolbar.rename"/>" name="renameFiles"/>

      </form:form>


    </div>

  </div>

</div>



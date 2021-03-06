<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String cId = java.util.UUID.randomUUID().toString();
%>

<%--<wp:internalServlet actionPath="/ExtStr2/do/bpm/FrontEnd/CaseProgressBar/view" />--%>
<s:if test="#request['bpmcss']==null">
    <link rel="stylesheet" href="<wp:resourceURL />plugins/jpkiebpm/static/css/jbpm-widget-ext.css" rel="stylesheet">
    <s:set var="bpmcss" value="true" scope="request"/>
</s:if>

<s:if test="#request['angular']==null">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.7/angular.min.js"></script>
    <s:set var="angular" value="true" scope="request"/>
</s:if>

<s:if test="#request['bpmComments']==null">
    <script src="<wp:resourceURL />plugins/jpkiebpm/static/js/jbpm-comments.js"></script>
    <s:set var="bpmComments" value="true" scope="request"/>
</s:if>

<div class="constainer-fluid" id="<%=cId%>" ng-controller="CommentsController as vm">
    <div class="ibox">
        <div class="ibox-title">

            <h2 class="card-pf-title">
                <span>Comments</span>
            </h2>
        </div>
        <div class="ibox float-e-margins">
            <div class="ibox-content">
                <div class="chat-activity-list">
                    <form action="<wp:action path="/ExtStr2/do/bpm/FrontEnd/CaseInstanceComments/updateComment.action"/>" method="post" class="form-horizontal" ng-repeat="comment in vm.mod.comments track by comment.id" >
                        <s:if test="casePath != null">
                            <s:hidden name="casePath" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="knowledgeSourceId != null">
                            <s:hidden name="knowledgeSourceId" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="containerid != null">
                            <s:hidden name="containerid" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="channelPath != null">
                            <s:hidden name="channelPath" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <div class="chat-element"  ng-class-even="'right'" ng-init="editMode = false">
                            <a href="#" ng-class-odd="'pull-left'" ng-class-even="'pull-right'">
                                <i class="fa fa-user fa-3x"></i>
                            </a>
                            <div class="media-body" ng-class-even="'text-right'">
                                <small class="text-navy" ng-class-odd="'pull-right'" ng-class-even="'pull-left'">{{::vm.ui.minsAgo(comment)}}</small>
                                <strong>{{::comment.author}}</strong>
                                <p class="m-b-xs" ng-show="!editMode">
                                    {{::comment.text}}
                                </p>
                                <small class="text-muted" ng-show="!editMode">{{::comment['added-at']['java.util.Date']|date:medium}}</small>

                                <input type="text" name="commentInput" class="form-control" ng-show="editMode"  ng-value="comment.text"/>
                                <br>
                                <wpsf:submit type="button" action="deleteComment" name="deleteComment" cssClass="btnv btn-sm btn-link" ng-show="!editMode">

                                    <small>Delete</small>
                                </wpsf:submit>

                                <button class="btn btn-sm btn-link" type="button" ng-show="!editMode" ng-click="editMode = true"><small>Edit</small></button>
                                <button class="btn btn-sm btn-link" type="button" ng-show="editMode" ng-click="editMode = false" ><small>Cancel</small></button>

                                <wpsf:submit type="button" action="updateComment" name="updateComment" ccsClass="btn btn-link" ng-show="editMode" >
                                    <small>Update</small>
                                </wpsf:submit>
                            </div>
                        </div>
                        <input type="hidden" name="caseCommentId" value="{{::comment.id}}" />
                    </form>
                </div>
            </div>
            <div class="ibox-content">
                <div class="chat-form">
                    
                    <form action="<wp:action path="/ExtStr2/do/bpm/FrontEnd/CaseInstanceComments/postComment.action"/>" method="post" class="form-horizontal" >
                        <s:if test="casePath != null">
                            <s:hidden name="casePath" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="knowledgeSourceId != null">
                            <s:hidden name="knowledgeSourceId" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="containerid != null">
                            <s:hidden name="containerid" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:if test="channelPath != null">
                            <s:hidden name="channelPath" escapeHtml="false" escapeJavaScript="false"/>
                        </s:if>
                        <s:textarea name="commentInput" cssClass="form-control" value="" ng-model="vm.newCommentText"/>
                        <div class="text-right">
                            <button type="submit" action="postComment" class="btn btn-sm btn-primary" ng-disabled="!vm.newCommentText || vm.newCommentText.length===0">
                                Send message
                            </button>
                        </div>
                    </form>
                        
                        
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    (function () {
    <s:if test="comments != null">
        bootBpmCommentsComponents('<%=cId%>',<s:property value="comments" escapeHtml="false" escapeJavaScript="false"/>);
        angular.element(document).ready(function () {
            angular.bootstrap(document.getElementById('<%=cId%>'), ['<%=cId%>']);
        });

    </s:if>
    })();
</script>
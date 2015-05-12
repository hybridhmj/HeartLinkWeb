<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h2>여기는 heartlinkrecord 입니다</h2>
<h3>heartlinkrecordCOntroller를 heartlink 게임 내역을 보여줍니다.</h3>

<div data-ng-repeat="answer in answers">

<input type="radio" name="zzang" id="rgman" data-ng-model="question.value" value="{{answer.answer1}}" checked>{{answer.answer1}}
</div>

<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
    Option one is this and that&mdash;be sure to include why it's great
  </label>
</div>
<div class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
    Option two can be something else and selecting it will deselect option one
  </label>
</div>
<div class="radio disabled">
  <label>
    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
    Option three is disabled
  </label>
</div>
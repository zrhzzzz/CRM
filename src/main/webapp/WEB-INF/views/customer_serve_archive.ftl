<!doctype html>
<html>
<head>
<#include "include/common.header.ftl" >
    <script type="text/javascript" src="${ctx}/js/customer.serve.archive.js"></script>
</head>
<body style="margin: 1px">
<table id="dg" title="客服服务归档管理" class="easyui-datagrid"
       fitColumns="true" pagination="true" rownumbers="true"
       url="${ctx}/customer_serve/list?state=${status?c}" fit="true" toolbar="#tb">
    <thead>
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="id" width="50" align="center">编号</th>
        <th field="customer" width="100" align="center">客户</th>
        <th field="overview" width="200" align="center">概要</th>
        <th field="serveType" width="100" align="center">服务类型</th>
        <th field="createPeople" width="100" align="center">创建人</th>
        <th field="createDate" width="100" align="center">创建日期</th>
        <th field="state" width="50" align="center" hidden="true">客服服务状态</th>
        <th field="assigner" width="50" align="center" hidden="true">分配人</th>
        <th field="assignTime" width="100" align="center" hidden="true">分配日期</th>
        <th field="serviceProce" width="100" align="center" hidden="true">服务处理</th>
        <th field="serviceProcePeople" width="100" align="center" hidden="true">服务处理人</th>
        <th field="serviceProceTime" width="100" align="center" hidden="true">服务处理日期</th>
        <th field="serviceProceResult" width="50" align="center" hidden="true">服务处理结果</th>
        <th field="myd" width="50" align="center" hidden="true">客户满意度</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:openCustomerServiceFileDialog()" class="easyui-linkbutton" iconCls="icon-fwgd" plain="true">查看客户服务详情</a>
    </div>
    <div>
        &nbsp;客户名称：&nbsp;<input type="text" id="s_customer" size="20" onkeydown="if(event.keyCode==13) searchCustomerService()"/>
        &nbsp;概要：&nbsp;<input type="text" id="s_overview" size="20" onkeydown="if(event.keyCode==13) searchCustomerService()"/>
        &nbsp;服务类型：&nbsp;
        <input class="easyui-combobox" id="s_serveType"
        data-options="panelHeight:'auto',editable:false,
        valueField:'dataDicValue',textField:'dataDicValue',
        url:'${ctx}/datadic/dataDicComboList.do?dataDicName=服务类型'"/>
         <#--
         <select class="easyui-combobox" id="s_serveType" editable="false" panelHeight="auto" >
	        <option value="">请选择...</option>
	        <option value="咨询">咨询</option>
	        <option value="建议">建议</option>
	        <option value="投诉">投诉</option>
	    </select>-->
        
    
        &nbsp;创建日期：&nbsp;<input type="text" id="s_createDatefrom" class="easyui-datebox" editable="true"/>&nbsp;-&nbsp;<input type="text" id="s_createDateto" class="easyui-datebox" editable="true"/>&nbsp;
        <a href="javascript:searchCustomerService()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>

<div id="dlg" class="easyui-dialog" style="width:750px;height:450px;padding: 10px 20px"
     closed="true" buttons="#dlg-buttons">

    <form id="fm" method="post">
        <table cellspacing="8px">
            <table cellspacing="8px">
                <tr>
                    <td>服务类型：</td>
                    <td>
                        <input type="text" id="serveType" name="serveType" readonly="readonly"/>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>客户</td>
                    <td><input type="text" id="customer" name="customer" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>概要：</td>
                    <td colspan="4">
                        <input type="text" id="overview" name="overview" style="width: 419px" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>服务请求：</td>
                    <td colspan="4">
                        <textarea id="serviceRequest" name="serviceRequest" rows="5" cols="49" readonly="readonly"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>创建人：</td>
                    <td>
                        <input type="text" readonly="readonly" id="createPeople" name="createPeople" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>创建时间：</td>
                    <td><input type="text" id="createDate" name="createDate" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>分配给：</td>
                    <td>
                        <input  id="assigner" name="assigner" readonly="readonly"/>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>分配时间：</td>
                    <td>
                        <input type="text" id="assignTime" name="assignTime" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>服务处理：</td>
                    <td colspan="4">
                        <textarea id="serviceProce" name="serviceProce" rows="5" cols="49" readonly="readonly"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>处理人：</td>
                    <td>
                        <input  id="serviceProcePeople" name="serviceProcePeople" readonly="readonly"/>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>处理时间：</td>
                    <td>
                        <input type="text" id="serviceProceTime" name="serviceProceTime" readonly="readonly"/>
                    </td>
                </tr>
                <tr>
                    <td>处理结果：</td>
                    <td>
                        <input  id="serviceProceResult" name="serviceProceResult" readonly="readonly"/>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td>客户满意度：</td>
                    <td>
                        <input  id="myd" name="myd" readonly="readonly"/>
                    </td>
                </tr>
            </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:closeCustomerFileDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>
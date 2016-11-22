<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Matrix.aspx.cs" Inherits="MatrixProject.Matrix" %>

<head>
<div class="title" align=center>
    <h1 >
        <asp:Label ID="pageHeader" text ="Interview Matrix Problem" runat="server"></asp:Label>
    </h1>
</div>
</head>

<script type="text/javascript">
    function buildMatrix() {
        var table = document.getElementById("tblMatrix");
        table.innerHTML = "";
        var height = document.getElementById("txtHeight").value;
        var width = document.getElementById("txtWidth").value;
        var result = 1;
        if (height <= 0 || width <= 0 || isNaN(height) || isNaN(width))
        {
            alert("Enter Correct values for Height and Width!");
            document.getElementById('dvOutput').style.display = "none";
            return false;
        }
        document.getElementById('dvOutput').style.display = "block";
        for(i=0; i < height ; i++)
        {
            var row = table.insertRow(i);
            for(j=0;j<width ;j++)
            {
                var cell = row.insertCell(j);
                cell.innerHTML = result++;
            }
        }
       
        return false;
    } 
   
   
</script>
<body>
<form id="form1" runat="server">
 <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div>
<table align="left">
<tr>
    <td>
       <asp:Label runat="server" Text="Matrix Height"></asp:Label>

    </td>
    <td>
        <asp:textbox runat="server" id ="txtHeight"></asp:textbox>
    </td>   
</tr>
<tr>
    <td>
       <asp:Label runat="server" Text="Matrix Width"></asp:Label>
    </td>
    <td>
        <asp:textbox runat="server" id ="txtWidth"></asp:textbox>
    </td>
</tr>   
<tr>   
    <td>
       <asp:Button runat="server" id="btnMatrix"  Text="Build Matrix" OnClientClick="return buildMatrix();"></asp:Button>
    </td>
</tr>
</table> 
<div style="clear:both;"></div>
<table id="tblMatrix" align="center" border="1"></table>
<div style="clear:both;"></div>
<div id="dvOutput" style="display:none;" hidden="true">
<asp:updatepanel ID="pnlUpdate" runat="server">
<ContentTemplate>
<table align="left">
<tr>
    <td>
        <asp:dropdownlist id= "ddlOutputFormat" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True">Top to Bottom</asp:ListItem>
        </asp:dropdownlist>
        
    </td>
    <td>
    <asp:Button runat="server" id="btncreateOutput" Text="Create Output" OnClick="btncreateOutput_Click"></asp:Button>
    </td>
</tr>
 </table>
<div style="clear:both;"></div>
<asp:Label id="lblOutput" runat="server" Text=""></asp:Label> 

 </ContentTemplate>
 </asp:updatepanel>
</div>
</div>
</form>
</body>



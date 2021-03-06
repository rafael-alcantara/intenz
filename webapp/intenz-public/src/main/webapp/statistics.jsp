<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<jsp:include page="head.jsp">
    <jsp:param name="title" value="IntEnz - Statistics"/>
</jsp:include>

<body class="level2">
<div id="wrapper" class="container_24">

<jsp:include page="headers.jsp">
    <jsp:param name="loc" value="docs"/>
</jsp:include>

<div class="grid_24 clearfix" id="content" role="main">

<section class="grid_18 alpha">

<h2>Statistics</h2>

<p>IntEnz <b>release ${statistics.releaseNumber} (${statistics.releaseDate})</b>:</p>

<table class="contenttable_lmenu stats_table" style="width: 20em">
	<tr>
		<th class="headingleft" colspan="2">Classes</th>
		<td align="right" style="text-align: right !important;">${statistics.classes}</td>
	</tr>
	<tr>
		<th class="headingleft" colspan="2">Subclasses</th>
		<td align="right" style="text-align: right !important;">${statistics.subclasses}</td>
	</tr>
	<tr>
	  <th class="headingleft" colspan="2">Sub-subclasses</th>
	  <td align="right" style="text-align: right !important;">${statistics.subSubclasses}</td>
	</tr>
    <tr>
      <th class="headingleft" nowrap="nowrap" rowspan="3">EC numbers</th>
      <td class="subheadingleft" nowrap="nowrap" title="Approved by NC-IUBMB">approved</td>
      <td align="right" style="text-align: right !important;">
      	${statistics.enzymesByStatus['APPROVED'][true] + statistics.enzymesByStatus['APPROVED'][false]}
   	</td>
    </tr>
    <tr>
      <td class="subheadingleft" nowrap="nowrap"
           title="Preliminary EC numbers issued by UniProt"><a
              href="query?cmd=SearchPreliminary">preliminary</a></td>
      <td align="right" style="text-align: right !important;">
      	${statistics.enzymesByStatus['PRELIMINARY'][true]}
      </td>
    </tr>
    <tr>
      <td class="subheadingleft" nowrap="nowrap"
          title="Not deleted, not transferred, either approved or preliminary">active</td>
    <%-- this figure = (APPROVED, ACTIVE) + (PRELIMINARY, ACTIVE) --%>
      <td align="right" style="text-align: right !important;">
      	${statistics.enzymesByStatus['APPROVED'][true] + statistics.enzymesByStatus['PRELIMINARY'][true]}
     </td>
    </tr>
</table>

<br/>
<p>Main cross-referenced databases:</p>
<table class="contenttable_lmenu stats_table" style="width: 30em">
	<tr>
		<th scope="col">Db name</th>
		<th scope="col">External unique entries</th>
		<th scope="col">Total cross references</th>
	</tr>
	<tr>
<c:forEach var="db" items="${statistics.xrefs}">
    <tr>
        <td class="leftsubheading">
            ${db.key}
        </td>
        <td align="right" style="text-align: right !important;">${db.value.distinct}</td>
        <td align="right" style="text-align: right !important;">${db.value.total}</td>
    </tr>
</c:forEach>

</table>

</section>

<section class="grid_6 omega">
    <%@ include file="docs.html" %>
</section>

</div>

<%@ include file="footer.jsp" %>

</div>
</body>
</html>

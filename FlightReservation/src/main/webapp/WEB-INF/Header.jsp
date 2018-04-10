<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<span>Flight Reservation System</span>
	<c:if test="${sessionScope.login eq null}">
	<c:redirect url="/loginfrm"></c:redirect>
	</c:if>
	<hr />
</header>

   <h2 align="right">Welcome ${sessionScope.login.custName}</h2>


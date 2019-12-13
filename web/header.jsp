<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header role="banner">
    <img alt="Books" src="images/banner.jpg">
    <h1><span>Chat App</span></h1>
    <nav>
        <ul>
            <c:choose>
                <c:when test="${param.title=='Home'}">
                    <li id="actual"><a class="actuala" href="Controller">Home</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="Controller">Home</a></li>
                </c:otherwise>
            </c:choose>

            <c:if test="${user != null}">
                <c:choose>
                    <c:when test="${param.title=='Chatpagina'}">
                        <li id="actual"><a class="actuala" href="Controller?action=Chatpagina">Chatpagina</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="Controller?action=Chatpagina">Chatpagina</a></li>
                    </c:otherwise>
                </c:choose>

                <c:choose>
                    <c:when test="${param.title=='Blogpagina'}">
                        <li id="actual"><a class="actuala" href="Controller?action=BlogPagina">Blogpagina</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="Controller?action=Blogpagina">Blogpagina</a></li>
                    </c:otherwise>
                </c:choose>
            </c:if>

        </ul>
    </nav>
    <h2>
        ${param.title}
    </h2>

</header>
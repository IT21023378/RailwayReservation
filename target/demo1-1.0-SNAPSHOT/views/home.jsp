<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>

    <!-- Bootstrap Style Sheet -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />

    <!-- Style Sheet -->
    <link rel="stylesheet" href="css/styles.css" />

    <!-- Google fonts -->

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700;900&family=Ubuntu:wght@300;400;700&display=swap"
      rel="stylesheet"
    />

    <!-- Bootstrap icons -->

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"
    />
  </head>
  <body>
    <!-- Section: Design Block -->
    <section class="">
      <!-- Jumbotron -->

      <h2 class="login-name container">Welcome, Danuja Jayasuriya</h2>

      <div class="container parent-home">
        <nav class="navbar navbar-expand-lg navbar-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Railway Reservation System</a>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#"
                    >Home</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">My Account</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">My Bookings</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <div class="card mb-3">
          <div class="row g-0">
            <div class="form-header col-md-4">
              <h3>Book Your Seat</h3>
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <form action="getschedule" method="GET">
                  <div class="form row">
                    <div class="col-lg-4">
                      <label for="from">From</label>
                      <select id="inputState" class="form-control" name="from">
                        <option selected>Choose Station</option>
                        <option value="1">ColomboFort</option>
                        <option value="2">Kandy</option>

                      </select>
                    </div>
                    <div class="col-lg-4">
                      <label for="to">To</label>
                      <select id="inputState" class="form-control" name="to">
                        <option selected>Choose Station</option>
                        <option value="1">ColomboFort</option>
                        <option value="2">Kandy</option>
                      </select>
                    </div>
                    <div class="col-lg-4">
                      <label for="date">Date</label>
                      <input type="date" class="form-control" name="date" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <label for="no">No of Passengers</label>
                      <input
                        type="number"
                        class="form-control"
                        placeholder="Number of Passengers"
                        name="nop"
                      />
                    </div>
                  </div>
                  <div class="d-flex justify-content-end">
                    <input
                      type="submit"
                      name="submit"
                      class="btn btn-outline-primary form-btn btn-submit"
                    />
                    <a href="/" class="btn btn-outline-dark form-btn">Reset</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>

        <table class="table">
          <thead>
            <tr>
              <th>Train Name</th>
              <th>From</th>
              <th>To</th>
              <th>Date</th>
              <th>Time</th>
            </tr>
          </thead>
          <tbody>
            <!--   for (Todo todo: todos) {  -->
            <c:forEach var="schedule" items="${listShedules}">
              <tr>
                <td>
                  <c:out value=" ${schedule.tName}" />
                </td>
                <td>
                  <c:out value="${schedule.fromStation}" />
                </td>
                <td>
                  <c:out value="${schedule.toStation}" />
                </td>
                <td>
                  <c:out value="${schedule.date}" />
                </td>
                <td>
                  <c:out value="${schedule.time}" />
                </td>
                <td>
                  <a href="" class="btn btn-primary">Book Ticket</a>
                </td>
              </tr>
            </c:forEach>
            <!-- } -->
          </tbody>
        </table>
      </div>

      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->
  </body>
</html>

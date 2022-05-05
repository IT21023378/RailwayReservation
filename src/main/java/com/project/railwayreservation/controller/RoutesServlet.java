package com.project.railwayreservation.controller;

import com.project.railwayreservation.CRUD.DanujaCRUD.DanujaSelect;
import com.project.railwayreservation.model.TrainStations;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/")
public class RoutesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getServletPath();

        switch (action) {
            case "/admin" :
                break;
            default :
                try {
                    getStationDetails(req, res);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }
    }

    public void getStationDetails(HttpServletRequest req, HttpServletResponse res) throws SQLException, ServletException,IOException {
        List<TrainStations> stations = DanujaSelect.selectAllStations();
        req.setAttribute("stations", stations);
        RequestDispatcher rd = req.getRequestDispatcher("views/home.jsp");
        rd.forward(req, res);
    }

}


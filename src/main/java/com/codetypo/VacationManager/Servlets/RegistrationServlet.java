package com.codetypo.VacationManager.Servlets;

import com.codetypo.VacationManager.Models.Details;
import com.codetypo.VacationManager.Models.Vacation;
import com.codetypo.VacationManager.Utilities.DbUtilEmployee;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {

    private DataSource dataSource;
    private DbUtilEmployee dbUtil;

    public RegistrationServlet() {
        // Obtain our environment naming context
        Context initCtx;
        try {
            initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            // Look up our data source
            dataSource = (DataSource)
                    envCtx.lookup("jdbc/vacationmanager");
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            dbUtil = new DbUtilEmployee(dataSource);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher;

        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            conn = dataSource.getConnection();

            if (dbUtil.loginToDB(request.getParameter("username"), request.getParameter("password")) < 0) {

                String sql = "INSERT INTO employees (e_employee_login,e_employee_password,e_is_admin) VALUES (?, ?, false);";
                statement = conn.prepareStatement(sql);
                statement.setString(1, request.getParameter("username"));
                statement.setString(2, request.getParameter("password"));

                statement.executeUpdate();

                String sql2 = "SELECT e_id FROM employees WHERE e_employee_login = ?;";
                statement = conn.prepareStatement(sql2);
                statement.setString(1, request.getParameter("username"));

                resultSet = statement.executeQuery();

                int employeeID = -1;

                while(resultSet.next()){
                    employeeID = resultSet.getInt("e_id");
                }

                String sql3 = "INSERT INTO details (d_employee_id, d_first_name, d_last_name, d_email) VALUES (?, ?, ?, ?);";
                statement = conn.prepareStatement(sql3);
                statement.setInt(1, employeeID);
                statement.setString(2, request.getParameter("firstName"));
                statement.setString(3, request.getParameter("lastName"));
                statement.setString(4, request.getParameter("email"));

                statement.executeUpdate();
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
    }
}
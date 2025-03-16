package org.example.persistence.config;

import lombok.NoArgsConstructor;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

import static lombok.AccessLevel.PRIVATE;

@NoArgsConstructor(access = PRIVATE)
public class ConnectionConfig {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:postgresql://localhost:5432/board";
        String user = "board";
        String password = "board";

        var connection = DriverManager.getConnection(url, user, password);
        connection.setAutoCommit(false);

        return connection;
    }
}

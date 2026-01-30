package com.minecraft.core.bukkit.user;

import com.minecraft.core.bukkit.util.database.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDataHandler {

    public void saveUserData(String username, String rank, int medals) {
        String query = "INSERT INTO user_data (username, rank, medals) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE rank = ?, medals = ?";

        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, username);
            statement.setString(2, rank);
            statement.setInt(3, medals);
            statement.setString(4, rank);
            statement.setInt(5, medals);

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
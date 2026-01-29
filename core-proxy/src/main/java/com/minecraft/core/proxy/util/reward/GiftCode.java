package com.minecraft.core.proxy.util.reward;

import com.minecraft.core.Constants;
import com.minecraft.core.enums.Rank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.Random;
import java.util.UUID;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class GiftCode {

    private String key, name;
    private Rank rank;
    private String duration;
    private UUID creator, redeemer;
    private long creation, redeem;

    // Verifica se o código foi resgatado
    public boolean isRedeemed() {
        return redeemer != null;
    }

    // Gera uma chave aleatória no formato XXXX-XXXX-XXXX
    private String generateRandomKey() {
        Random random = new Random();
        StringBuilder keyBuilder = new StringBuilder();
        for (int i = 0; i < 3; i++) {
            // Gera uma string aleatória de 4 caracteres
            for (int j = 0; j < 4; j++) {
                keyBuilder.append((char) ('A' + random.nextInt(26))); // Gera uma letra aleatória
            }
            if (i != 2) {
                keyBuilder.append("-"); // Adiciona o separador '-' entre os blocos
            }
        }
        return keyBuilder.toString();
    }

    // Insere o código de presente no banco de dados
    public void push() {
        // Gerar chave aleatória antes de inserir no banco
        String generatedKey = generateRandomKey();
        this.key = generatedKey;

        String sql = "INSERT INTO `codes` (`key`, `name`, `rank`, `duration`, `creator`, `creation`, `redeemer`, `redeem`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
    
        try (PreparedStatement ps = Constants.getMySQL().getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, key);  // Chave gerada
            ps.setString(2, name);
            ps.setString(3, rank.getUniqueCode());
            ps.setString(4, duration);
            ps.setString(5, creator.toString());
            ps.setLong(6, creation);
    
            // Se o código não foi resgatado, setamos NULL para 'redeemer' e 'redeem'
            if (redeemer != null && redeem > 0) {
                ps.setString(7, redeemer.toString());
                ps.setLong(8, redeem);
            } else {
                ps.setNull(7, Types.VARCHAR);
                ps.setNull(8, Types.BIGINT);
            }
    
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    // Atualiza um código de presente no banco de dados
    public void update() {
        String UPDATE_CODE_QUERY = "UPDATE codes SET `redeemer` = ?, `redeem` = ? WHERE `key` = ?";

        try (Connection connection = Constants.getMySQL().getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_CODE_QUERY)) {

            statement.setString(1, redeemer.toString());
            statement.setLong(2, redeem);
            statement.setString(3, key);

            int rowsAffected = statement.executeUpdate();
            if (rowsAffected > 0) {
                System.out.println("Gift code updated successfully.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

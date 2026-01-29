package com.minecraft.core.server;

import com.minecraft.core.server.packet.ServerPayload;
import lombok.Getter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public abstract class ServerStorage {

    @Getter
    private final List<Server> servers;

    public ServerStorage() {
        this.servers = new ArrayList<>();
    }

    public abstract int myPort();

    public abstract void close();

    public abstract void send();

    public abstract void open();

    public abstract int count();

    public abstract boolean isListen(ServerType serverType);

    public abstract void listen(ServerType... serverTypes);

    public abstract String getNameOf(int port);

    public Server getServer(ServerPayload payload) {
        return servers.stream().filter(c -> c.getPort() == payload.getPort()).findAny().orElse(null);
    }

    public List<Server> getServers(ServerType type) {
        return servers.stream().filter(c -> c.getServerType() == type).collect(Collectors.toList());
    }

    public Server getServer(String name) {
        return servers.stream().filter(c -> c.getName().equalsIgnoreCase(name)).findAny().orElse(null);
    }

    public Server getLocalServer() {
        return servers.stream().filter(c -> c.getPort() == myPort()).findAny().orElse(null);
    }

    // Soma a lista de inteiros
    public int sum(List<Integer> ints) {
        int count = 0;

        if (ints == null || ints.isEmpty()) {
            return 0;  // Se a lista estiver vazia, retorna 0
        }

        // Soma apenas valores maiores que 0
        for (int anInt : ints) {
            if (anInt > 0) {
                count += anInt;
            }
        }

        return count > 0 ? count : 0;  // Retorna 0 se a soma for 0 ou negativa
    }

    // Contagem de jogadores para um único tipo de servidor
    public int count(ServerType type) {
        List<Integer> playerCounts = getServers().stream()
            .filter(c -> c.getBreath() != null && !c.isDead() && c.getServerType() == type)
            .map(c -> c.getBreath().getOnlinePlayers())  // Obtemos a quantidade de jogadores online
            .collect(Collectors.toList());

        return sum(playerCounts);  // Soma a contagem de jogadores válidos
    }

    // Contagem de jogadores para múltiplos tipos de servidores
    public int count(ServerType... serverTypes) {
        List<ServerType> serverTypeList = Arrays.asList(serverTypes);
        List<Integer> playerCounts = getServers().stream()
            .filter(c -> c.getBreath() != null && !c.isDead() && serverTypeList.contains(c.getServerType()))
            .map(c -> c.getBreath().getOnlinePlayers())  // Obtemos a quantidade de jogadores online
            .collect(Collectors.toList());

        return sum(playerCounts);  // Soma a contagem de jogadores válidos
    }

    // Método para contar todos os jogadores de todos os servidores
    public int countAllPlayers() {
        List<Integer> playerCounts = getServers().stream()
            .map(c -> {
                if (c.isDead() || c.getBreath() == null) {
                    return 0;  // Se o servidor estiver offline, adiciona 0 jogadores
                }
                return c.getBreath().getOnlinePlayers();  // Caso contrário, conta os jogadores online
            })
            .collect(Collectors.toList());

        return sum(playerCounts);  // Soma a contagem de jogadores válidos
    }

    // Método que registra um novo servidor
    public void registerServer(Server server) {
        servers.add(server);  // Adiciona o servidor à lista
        servers.sort(Comparator.comparingInt(Server::getPort));  // Classifica a lista de servidores por porta
    }
}

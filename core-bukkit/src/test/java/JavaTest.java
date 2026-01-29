

import java.util.function.Consumer;

public class JavaTest {

    public static void main(String[] args) {
        Consumer<Integer> consumer = (i) -> System.out.println("ssss");
        consumer.accept(null);
    }

}
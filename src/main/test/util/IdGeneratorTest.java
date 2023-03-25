package util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class IdGeneratorTest {
    public static void main(String[] args) {
        new IdGeneratorTest().getId();
    }

    @Test
    void getId() {
        IdGenerator.getId(8);
    }
}
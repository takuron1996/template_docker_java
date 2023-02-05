package com.example;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

/**
 * サンプルテスト
 *
 */
public class MainTest {
    @Test
    public void helloTest() {
        var main = new Main();
        assertEquals(main.hello(), "hello");
    }
}
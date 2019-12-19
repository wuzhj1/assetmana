package cn.ecut.assetmana;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.ecut.assetmana.mapper")
public class AssetmanaApplication {

    public static void main(String[] args) {
        SpringApplication.run(AssetmanaApplication.class, args);
    }

}

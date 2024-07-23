import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbTest {

    public static void main(String[] args) {
        String DATABASE_NAME = "ite";
        String PROPERTIES = "?characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
        String URL = "jdbc:mysql://localhost:3307/" + DATABASE_NAME + PROPERTIES;
        String USER = "root";
        String PASS = "ktcpass23";

        try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {
            System.out.println("データベースの接続に成功!");
            // ここでデータベースに対する処理を行う
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

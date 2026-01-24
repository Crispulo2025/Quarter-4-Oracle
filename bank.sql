import java.sql.*;

public class BankApp {
    public static void main(String[] args) {
        try {
            // Connect to Oracle database
            Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "username", "password");

            // Prepare to call PL/SQL procedure
            CallableStatement stmt = conn.prepareCall("{call get_account_balance(?, ?)}");

            // Set input parameter
            stmt.setInt(1, 12345); // account_id = 12345

            // Register output parameter
            stmt.registerOutParameter(2, Types.NUMERIC);

            // Execute procedure
            stmt.execute();

            // Retrieve the result
            double balance = stmt.getDouble(2);
            System.out.println("Account balance: " + balance);

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

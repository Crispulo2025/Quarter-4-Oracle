CREATE OR REPLACE PACKAGE BODY bank_pkg IS

    PROCEDURE deposit(p_account_id IN NUMBER, p_amount IN NUMBER) IS
    BEGIN
        -- Validate input
        IF p_amount <= 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Amount must be positive');
        END IF;

        -- Update account balance
        UPDATE accounts
        SET balance = balance + p_amount
        WHERE account_id = p_account_id;

        -- Log transaction
        INSERT INTO audit_log(user_id, action, timestamp)
        VALUES (USER, 'Deposit', SYSDATE);
    END deposit;

    PROCEDURE withdraw(p_account_id IN NUMBER, p_amount IN NUMBER) IS
        v_balance NUMBER;
    BEGIN
        SELECT balance INTO v_balance
        FROM accounts
        WHERE account_id = p_account_id;

        IF p_amount <= 0 OR p_amount > v_balance THEN
            RAISE_APPLICATION_ERROR(-20002, 'Invalid withdrawal amount');
        END IF;

        UPDATE accounts
        SET balance = balance - p_amount
        WHERE account_id = p_account_id;

        INSERT INTO audit_log(user_id, action, timestamp)
        VALUES (USER, 'Withdraw', SYSDATE);
    END withdraw;

    FUNCTION get_balance(p_account_id IN NUMBER) RETURN NUMBER IS
        v_balance NUMBER;
    BEGIN
        SELECT balance INTO v_balance
        FROM accounts
        WHERE account_id = p_account_id;

        RETURN v_balance;
    END get_balance;

END bank_pkg;
/

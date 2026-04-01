CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    name VARCHAR(50),
    balance DECIMAL(10,2)
);

CREATE TABLE Transactions (
    txn_id INT PRIMARY KEY,
    from_account INT,
    to_account INT,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    txn_date DATE
);

CREATE TABLE Fraud_Log (
    fraud_id INT PRIMARY KEY,
    account_id INT,
    issue VARCHAR(100),
    detected_at DATE
);
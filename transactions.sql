-- Successful Transaction
START TRANSACTION;

UPDATE Accounts
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE Accounts
SET balance = balance + 1000
WHERE account_id = 2;

INSERT INTO Transactions VALUES (1, 1, 2, 1000, 'SUCCESS', CURRENT_DATE);

COMMIT;

-- Failed Transaction (Rollback Example)
START TRANSACTION;

UPDATE Accounts
SET balance = balance - 6000
WHERE account_id = 1;

-- Rollback to prevent negative balance
ROLLBACK;
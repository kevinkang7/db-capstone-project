CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(
IN input_date DATE,
IN input_table INT
)
BEGIN
    DECLARE booking_count INT;

    START TRANSACTION;

SELECT 
    COUNT(*)
INTO booking_count FROM
    Bookings
WHERE
    Date = input_date
        AND TableNo = input_table;

    -- If booked, cancel (ROLLBACK)
    IF booking_count > 0 THEN
        ROLLBACK;
SELECT 'Booking failed: Table is already booked.' AS BookingStatus;
    ELSE
        INSERT INTO Bookings (Date, TableNo)
        VALUES (input_date, input_table);

        COMMIT;
SELECT 'Booking successful!' AS BookingStatus;
    END IF;
END
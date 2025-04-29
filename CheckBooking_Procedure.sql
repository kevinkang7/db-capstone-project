CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(
    IN input_date DATE,
    IN input_table INT
)
BEGIN

    DECLARE booking_count INT;

SELECT 
    COUNT(*)
INTO booking_count FROM
    Bookings
WHERE
    BookingDate = input_date
        AND TableNumber = input_table;
    
	IF booking_count > 0 THEN
	SELECT 'Table is already booked.' AS BookingStatus;
    ELSE
	SELECT 'Table is available.' AS BookingStatus;
    END IF;

END
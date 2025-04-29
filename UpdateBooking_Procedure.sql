CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(
IN input_bookingID INT,
IN input_date DATE
)
BEGIN

UPDATE Bookings
SET Date = input_bookingID
WHERE BookingID = input_bookingID
;
SELECT CONCAT('Booking ' ,input_bookingID, 'updated!') AS BookingStatus;

END

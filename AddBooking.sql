CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(
IN input_date DATE,
IN input_table INT,
IN input_customer INT,
IN input_staff INT
)
BEGIN

INSERT INTO Bookings (Date, TableNo, CustomerID, StaffID)
VALUE 
(input_date,
input_table,
input_customer,
input_staff);
COMMIT;
SELECT 'New booking added!' AS BookingStatus;
END
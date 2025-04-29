PREPARE GetOrderDetailGuestStatusGuestStatus FROM
'select OrderID, Quantity, BillAmount, b.CustomerID FROM Orders AS o left join Bookings AS b on o.bookingID = b.bookingID WHERE b.CustomerID = ?';
set @id = 1;
EXECUTE GetOrderDetail USING @id;


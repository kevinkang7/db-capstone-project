CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN inputOrderID INT)
BEGIN
 DELETE FROM Orders WHERE OrderID = inputOrderID;
END
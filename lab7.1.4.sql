 create FUNCTION FN_LUONGLB (@TENPHONG NVARCHAR (30))
 RETURNS INT
AS
BEGIN
 RETURN(
  SELECT AVG(B.LUONG) FROM PHONGBAN A INNER JOIN NHANVIEN B ON A.MAPHG =B.PHG 
  WHERE TENPHG LIKE '%' + @TENPHONG +'%'
 );
 END;

 SELECT HONV,TENLOT, TENNV FROM NHANVIEN A INNER JOIN PHONGBAN B ON A.PHG = B.MAPHG
 WHERE LUONG>[dbo].[FN_LUONGLB](N'QUAN LY') AND TENPHG LIKE N'%QUANLY%';
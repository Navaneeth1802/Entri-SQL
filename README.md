<h1>Library Management Project</h1>
<h3>Aim:Create a Library management system that keeps track of all information about books in the library, their cost, status and total number of books available in the library</h3>
<b>
<h4>Tables</h4>
<body>
-  Branch[Branch_no,Manager_Id,Branch_address,Contact_no]
-  Employee[Emp_Id,Emp_name,Position,Salary,Branch_no]
 -  Books[ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher]
 -  Customer[Customer_Id,Customer_name,Customer_address,Reg_date]
 -  IssueStatus[Issue_Id,Issued_cust,Issued_book_name,Issue_date,Isbn_book]
 -  ReturnStatus[Return_Id,Return_cust,Return_book_name,Return_date,Isbn_book2]
</body>

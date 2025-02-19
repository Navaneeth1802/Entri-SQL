create database Library;
#1Branch
use Library;
create table Branch(Branch_No int  primary key,Manager_id int,Branch_address varchar(20),contact_no numeric);
#2Employee
create table Employee(Emp_id int primary key,Emp_name varchar(20),position varchar(20),salary int,branch_no int,foreign key(branch_no) references Branch(Branch_No));
#3Books
create table Books(ISBN int primary key,Book_title varchar(100),Category varchar(100),Rental_price int,Status varchar(5) default 'yes',Author varchar(100),Publisher varchar(100));
#4Customer
create table Customer(Customer_id int primary key,Customer_name varchar(25),Customer_address varchar(25),Reg_date date);
#5Issue
create table IssueStatus(issue_id int primary key,issued_customer int,issued_book_name varchar(100),issue_date date,isbn_book int,foreign key(issued_customer) references Customer(Customer_id),foreign key(isbn_book) references Books(ISBN));
#6ReturnStatus
create table ReturnStatus(Return_id int primary key,Return_cust varchar(25),Return_book_name varchar(100),return_date date,isbn_book2 int,foreign key(isbn_book2) references Books(ISBN));


#InsertingValues
INSERT INTO Branch (Branch_No, Manager_id, Branch_address, contact_no) VALUES
(1, 101, 'MG Road', 9876543210),
(2, 102, 'Brigade Road', 9876543211),
(3, 103, 'Indiranagar', 9876543212),
(4, 104, 'Whitefield', 9876543213),
(5, 105, 'Electronic City', 9876543214),
(6, 106, 'Koramangala', 9876543215),
(7, 107, 'Jayanagar', 9876543216),
(8, 108, 'Marathahalli', 9876543217),
(9, 109, 'Banashankari', 9876543218),
(10, 110, 'Hebbal', 9876543219),
(11, 111, 'Yeshwanthpur', 9876543220),
(12, 112, 'Rajajinagar', 9876543221),
(13, 113, 'BTM Layout', 9876543222),
(14, 114, 'Basavanagudi', 9876543223),
(15, 115, 'Malleshwaram', 9876543224),
(16, 116, 'KR Puram', 9876543225),
(17, 117, 'Hennur', 9876543226),
(18, 118, 'Bellandur', 9876543227),
(19, 119, 'Sarjapur', 9876543228),
(20, 120, 'Ulsoor', 9876543229),
(21, 121, 'Vijayanagar', 9876543230),
(22, 122, 'Hosur Road', 9876543231),
(23, 123, 'Richmond Town', 9876543232),
(24, 124, 'Cunningham Road', 9876543233),
(25, 125, 'Domlur', 9876543234),
(26, 126, 'Shivajinagar', 9876543235),
(27, 127, 'Sadashivanagar', 9876543236),
(28, 128, 'Majestic', 9876543237),
(29, 129, 'RT Nagar', 9876543238),
(30, 130, 'Frazer Town', 9876543239);


INSERT INTO Employee(Emp_id, Emp_name, position, salary, branch_no) VALUES
(101, 'Rajesh Kumar', 'Manager', 85000, 1),
(102, 'Anita Sharma', 'Manager', 87000, 2),
(103, 'Vikram Singh', 'Manager', 89000, 3),
(104, 'Meena Reddy', 'Manager', 86000, 4),
(105, 'Suresh Patel', 'Manager', 88000, 5),
(106, 'Arjun Rao', 'Manager', 85500, 6),
(107, 'Priya Das', 'Manager', 87500, 7),
(108, 'Kiran Mehta', 'Manager', 88200, 8),
(109, 'Sunita Iyer', 'Manager', 85800, 9),
(110, 'Amit Verma', 'Manager', 86000, 10),
(111, 'Ravi Nair', 'Manager', 87000, 11),
(112, 'Kavita Joshi', 'Manager', 86500, 12),
(113, 'Pankaj Roy', 'Manager', 87500, 13),
(114, 'Deepa Rao', 'Manager', 88000, 14),
(115, 'Manish Gupta', 'Manager', 86000, 15),
(116, 'Rohan Sharma', 'Manager', 86200, 16),
(117, 'Seema Yadav', 'Manager', 86800, 17),
(118, 'Varun Kapoor', 'Manager', 87400, 18),
(119, 'Neha Arora', 'Manager', 87800, 19),
(120, 'Vivek Chawla', 'Manager', 86900, 20),
(121, 'Swati Ghosh', 'Manager', 87100, 21),
(122, 'Anil Kumar', 'Manager', 87200, 22),
(123, 'Shweta Bansal', 'Manager', 87000, 23),
(124, 'Rahul Desai', 'Manager', 87300, 24),
(125, 'Sneha Pillai', 'Manager', 86500, 25),
(126, 'Aditya Rao', 'Manager', 86900, 26),
(127, 'Meghna Paul', 'Manager', 87400, 27),
(128, 'Rishi Thakur', 'Manager', 87500, 28),
(129, 'Sakshi Mishra', 'Manager', 87700, 29),
(130, 'Nitin Mehra', 'Manager', 87800, 30),
(131, 'Akhil Singh', 'Cashier', 32000, 1),
(132, 'Divya Jain', 'Clerk', 29000, 1),
(133, 'Rohan Patel', 'Assistant', 31000, 2),
(134, 'Sonia Roy', 'Sales Executive', 35000, 3),
(135, 'Prakash Gupta', 'Accountant', 42000, 4),
(136, 'Farhan Ali', 'Clerk', 28500, 5),
(137, 'Meera Kapoor', 'Cashier', 33000, 6),
(138, 'Amitabh Rao', 'HR Executive', 48000, 7),
(139, 'Juhi Mehta', 'Clerk', 29500, 8),
(140, 'Suresh Yadav', 'Sales Executive', 35500, 9),
(141, 'Geeta Shah', 'Accountant', 41500, 10),
(142, 'Kartik Iyer', 'Assistant', 31200, 11),
(143, 'Sana Reddy', 'Cashier', 32500, 12),
(144, 'Ashok Das', 'Clerk', 28800, 13),
(145, 'Pooja Sharma', 'Sales Executive', 35000, 14),
(146, 'Vimal Rao', 'HR Executive', 47000, 15),
(147, 'Neeraj Singh', 'Accountant', 41000, 16),
(148, 'Ritu Joshi', 'Cashier', 34000, 17),
(149, 'Anand Kapoor', 'Clerk', 29000, 18),
(150, 'Sonia Das', 'Assistant', 31500, 19),
(151, 'Varsha Patel', 'Sales Executive', 34500, 20),
(152, 'Rajiv Kumar', 'Accountant', 41900, 21),
(153, 'Anjali Nair', 'Cashier', 32700, 22),
(154, 'Sameer Gupta', 'Clerk', 28900, 23),
(155, 'Kirti Shah', 'Sales Executive', 35200, 24),
(156, 'Manoj Iyer', 'HR Executive', 46900, 25),
(157, 'Sunil Rao', 'Accountant', 41400, 26),
(158, 'Kamal Sharma', 'Cashier', 32200, 27),
(159, 'Shivani Singh', 'Clerk', 28700, 28),
(160, 'Arvind Das', 'Sales Executive', 34900, 29);

#
INSERT INTO Books (ISBN, Book_title, Category, Rental_price, Status, Author, Publisher) VALUES
(1001, 'The Alchemist', 'Fiction', 120, 'yes', 'Paulo Coelho', 'HarperCollins'),
(1002, 'Harry Potter', 'Fiction', 150, 'yes', 'J.K. Rowling', 'Bloomsbury'),
(1003, 'Pride & Prejudice', 'Fiction', 110, 'yes', 'Jane Austen', 'Penguin'),
(1004, 'The Great Gatsby', 'Fiction', 130, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
(1005, 'To Kill a Mockingbird', 'Fiction', 125, 'yes', 'Harper Lee', 'Arrow Books'),
(1006, '1984', 'Fiction', 115, 'yes', 'George Orwell', 'Secker & Warburg'),
(1007, 'The Hobbit', 'Fiction', 140, 'yes', 'J.R.R. Tolkien', 'Allen & Unwin'),
(1008, 'Moby Dick', 'Fiction', 100, 'yes', 'Herman Melville', 'Harper & Brothers'),
(1009, 'The Catcher in the Rye', 'Fiction', 120, 'yes', 'J.D. Salinger', 'Little, Brown'),
(1010, 'Brave New World', 'Fiction', 135, 'yes', 'Aldous Huxley', 'Chatto & Windus'),
(1011, 'Rich Dad Poor Dad', 'Finance', 130, 'yes', 'Robert Kiyosaki', 'Plata Publishing'),
(1012, 'The Intelligent Investor', 'Finance', 150, 'yes', 'Benjamin Graham', 'HarperBusiness'),
(1013, 'Think and Grow Rich', 'Finance', 120, 'yes', 'Napoleon Hill', 'Ballantine Books'),
(1014, 'One Up on Wall Street', 'Finance', 140, 'yes', 'Peter Lynch', 'Simon & Schuster'),
(1015, 'The Millionaire Next Door', 'Finance', 125, 'yes', 'Thomas J. Stanley', 'Longstreet Press'),
(1016, 'Your Money or Your Life', 'Finance', 115, 'yes', 'Joe Dominguez', 'Penguin'),
(1017, 'Unshakeable', 'Finance', 145, 'yes', 'Tony Robbins', 'Simon & Schuster'),
(1018, 'Financial Freedom', 'Finance', 135, 'yes', 'Grant Sabatier', 'Avery'),
(1019, 'I Will Teach You To Be Rich', 'Finance', 125, 'yes', 'Ramit Sethi', 'Workman Publishing'),
(1020, 'Common Stocks and Uncommon Profits', 'Finance', 140, 'yes', 'Philip Fisher', 'Wiley'),
(1021, 'Clean Code', 'Programming', 180, 'yes', 'Robert C. Martin', 'Prentice Hall'),
(1022, 'The Pragmatic Programmer', 'Programming', 190, 'yes', 'Andrew Hunt', 'Addison-Wesley'),
(1023, 'Introduction to Algorithms', 'Programming', 200, 'yes', 'Cormen', 'MIT Press'),
(1024, 'Python Crash Course', 'Programming', 170, 'yes', 'Eric Matthes', 'No Starch Press'),
(1025, 'Head First Java', 'Programming', 175, 'yes', 'Kathy Sierra', 'O\'Reilly Media'),
(1026, 'Effective C++', 'Programming', 160, 'yes', 'Scott Meyers', 'Addison-Wesley'),
(1027, 'Design Patterns', 'Programming', 185, 'yes', 'Erich Gamma', 'Addison-Wesley'),
(1028, 'You Don\'t Know JS', 'Programming', 150, 'yes', 'Kyle Simpson', 'O\'Reilly Media'),
(1029, 'JavaScript: The Good Parts', 'Programming', 155, 'yes', 'Douglas Crockford', 'O\'Reilly Media'),
(1030, 'Automate the Boring Stuff', 'Programming', 165, 'yes', 'Al Sweigart', 'No Starch Press'),
(1031, 'Atomic Habits', 'Self Improvement', 140, 'yes', 'James Clear', 'Avery'),
(1032, 'The 7 Habits of Highly Effective People', 'Self Improvement', 145, 'yes', 'Stephen Covey', 'Simon & Schuster'),
(1033, 'Deep Work', 'Self Improvement', 135, 'yes', 'Cal Newport', 'Grand Central Publishing'),
(1034, 'The Power of Now', 'Self Improvement', 125, 'yes', 'Eckhart Tolle', 'New World Library'),
(1035, 'Can\'t Hurt Me', 'Self Improvement', 150, 'yes', 'David Goggins', 'Lioncrest Publishing'),
(1036, 'Start with Why', 'Self Improvement', 130, 'yes', 'Simon Sinek', 'Portfolio'),
(1037, 'Make Your Bed', 'Self Improvement', 110, 'yes', 'William H. McRaven', 'Grand Central Publishing'),
(1038, 'Mindset', 'Self Improvement', 145, 'yes', 'Carol Dweck', 'Ballantine Books'),
(1039, 'The Subtle Art of Not Giving a F*ck', 'Self Improvement', 135, 'yes', 'Mark Manson', 'Harper'),
(1040, 'Awaken the Giant Within', 'Self Improvement', 155, 'yes', 'Tony Robbins', 'Free Press'),
(1041, 'Zero to One', 'Finance', 150, 'yes', 'Peter Thiel', 'Crown Business'),
(1042, 'Eloquent JavaScript', 'Programming', 165, 'yes', 'Marijn Haverbeke', 'No Starch Press'),
(1043, 'Sapiens', 'Fiction', 145, 'yes', 'Yuval Noah Harari', 'Harper'),
(1044, 'Cracking the Coding Interview', 'Programming', 175, 'yes', 'Gayle Laakmann McDowell', 'CareerCup'),
(1045, 'Tools of Titans', 'Self Improvement', 160, 'yes', 'Tim Ferriss', 'Houghton Mifflin'),
(1046, 'The Lean Startup', 'Finance', 155, 'yes', 'Eric Ries', 'Crown Business'),
(1047, 'Refactoring', 'Programming', 180, 'yes', 'Martin Fowler', 'Addison-Wesley'),
(1048, 'The Art of War', 'Self Improvement', 120, 'yes', 'Sun Tzu', 'Shambhala'),
(1049, 'Good to Great', 'Finance', 165, 'yes', 'Jim Collins', 'HarperBusiness'),
(1050, 'The War of Art', 'Self Improvement', 130, 'yes', 'Steven Pressfield', 'Black Irish Entertainment');

INSERT INTO Customer (Customer_id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'Amit Sharma', 'Sector 15, Delhi', '2023-01-10'),
(2, 'Priya Mehta', 'MG Road, Mumbai', '2023-02-14'),
(3, 'Rahul Verma', 'Park Street, Kolkata', '2023-03-05'),
(4, 'Sneha Kapoor', 'Rajajinagar, Bangalore', '2023-03-22'),
(5, 'Arjun Singh', 'Civil Lines, Lucknow', '2023-04-10'),
(6, 'Pooja Patel', 'Gomti Nagar, Lucknow', '2023-04-18'),
(7, 'Vikram Rao', 'Indira Nagar, Bangalore', '2023-05-01'),
(8, 'Neha Joshi', 'JP Nagar, Bangalore', '2023-05-12'),
(9, 'Rohan Gupta', 'Powai, Mumbai', '2023-06-03'),
(10, 'Anjali Desai', 'Baner, Pune', '2023-06-15'),
(11, 'Suresh Nair', 'Vyttila, Kochi', '2023-07-04'),
(12, 'Kiran Kumar', 'Patia, Bhubaneswar', '2023-07-16'),
(13, 'Meera Iyer', 'Aluva, Kochi', '2023-07-22'),
(14, 'Deepak Reddy', 'Banjara Hills, Hyderabad', '2023-08-10'),
(15, 'Rita Shah', 'Andheri West, Mumbai', '2023-08-20'),
(16, 'Sanjay Yadav', 'Hazratganj, Lucknow', '2023-09-05'),
(17, 'Asha Pillai', 'Panampilly, Kochi', '2023-09-14'),
(18, 'Manish Trivedi', 'Koregaon Park, Pune', '2023-10-01'),
(19, 'Sunita Rao', 'Shivaji Nagar, Pune', '2023-10-15'),
(20, 'Rajesh Kulkarni', 'Kalyan, Thane', '2023-11-02'),
(21, 'Komal Dixit', 'Churchgate, Mumbai', '2023-11-14'),
(22, 'Vivek Tiwari', 'Salt Lake, Kolkata', '2023-12-05'),
(23, 'Shalini Saxena', 'Boring Road, Patna', '2023-12-20'),
(24, 'Gopal Menon', 'Edapally, Kochi', '2024-01-07'),
(25, 'Varun Ahuja', 'Hinjewadi, Pune', '2024-01-18'),
(26, 'Priyanka Chawla', 'Karol Bagh, Delhi', '2024-02-03'),
(27, 'Ramesh Patel', 'Satellite, Ahmedabad', '2024-02-20'),
(28, 'Shreya Ghosh', 'Ballygunge, Kolkata', '2024-03-02'),
(29, 'Nikhil Deshmukh', 'Camp, Pune', '2024-03-15'),
(30, 'Swati Agarwal', 'Rajarhat, Kolkata', '2024-03-28'),
(31, 'Ankit Bansal', 'Sector 62, Noida', '2024-04-01'),
(32, 'Pallavi Joshi', 'Kukatpally, Hyderabad', '2024-04-12'),
(33, 'Ravi Shankar', 'Vashi, Navi Mumbai', '2024-04-20'),
(34, 'Nisha Khanna', 'Vile Parle, Mumbai', '2024-05-03'),
(35, 'Tarun Malhotra', 'Lajpat Nagar, Delhi', '2024-05-10'),
(36, 'Reema Dutta', 'Sector 21, Chandigarh', '2024-05-15'),
(37, 'Prateek Kumar', 'Anna Nagar, Chennai', '2024-05-22'),
(38, 'Geeta Reddy', 'Mehdipatnam, Hyderabad', '2024-05-28'),
(39, 'Aakash Sen', 'Garia, Kolkata', '2024-06-05'),
(40, 'Kavita Nair', 'Dadar West, Mumbai', '2024-06-12');


INSERT INTO IssueStatus (issue_id, issued_customer, issued_book_name, issue_date, isbn_book) VALUES
(1, 1, 'The Alchemist', '2024-04-10', 1001),
(2, 2, 'Rich Dad Poor Dad', '2024-04-15', 1011),
(3, 3, 'Clean Code', '2024-04-20', 1021),
(4, 4, 'Atomic Habits', '2024-04-25', 1031),
(5, 5, 'The Pragmatic Programmer', '2024-05-02', 1022),
(6, 6, 'Harry Potter', '2024-05-05', 1002),
(7, 7, 'The Intelligent Investor', '2024-05-10', 1012),
(8, 8, 'Deep Work', '2024-05-15', 1033),
(9, 9, 'Python Crash Course', '2024-05-20', 1024),
(10, 10, 'Think and Grow Rich', '2024-05-22', 1013),
(11, 11, 'The Great Gatsby', '2024-06-01', 1004),
(12, 12, 'Start with Why', '2024-06-05', 1036),
(13, 13, 'One Up on Wall Street', '2024-06-10', 1014),
(14, 14, 'The Hobbit', '2024-06-15', 1007),
(15, 15, 'Mindset', '2024-06-20', 1038),
(16, 16, 'Introduction to Algorithms', '2024-06-22', 1023),
(17, 17, 'The Power of Now', '2024-07-01', 1034),
(18, 18, 'Financial Freedom', '2024-07-03', 1018),
(19, 19, 'Head First Java', '2024-07-05', 1025),
(20, 20, 'Make Your Bed', '2024-07-10', 1037),
(21, 21, 'Unshakeable', '2024-07-15', 1017),
(22, 22, 'Effective C++', '2024-07-20', 1026),
(23, 23, 'Can\'t Hurt Me', '2024-07-25', 1035),
(24, 24, 'Design Patterns', '2024-07-28', 1027),
(25, 25, 'The Subtle Art', '2024-08-01', 1039),
(26, 26, 'You Don\'t Know JS', '2024-08-05', 1028),
(27, 27, 'I Will Teach You To Be Rich', '2024-08-10', 1019),
(28, 28, 'JavaScript: The Good Parts', '2024-08-15', 1029),
(29, 29, 'Awaken the Giant Within', '2024-08-20', 1040),
(30, 30, 'Automate the Boring Stuff', '2024-08-25', 1030),
(31, 31, 'Eloquent JavaScript', '2024-08-28', 1041),
(32, 32, 'The Art of Computer Programming', '2024-09-01', 1042),
(33, 33, 'Learning Python', '2024-09-05', 1043),
(34, 34, 'The Lean Startup', '2024-09-10', 1044),
(35, 35, 'Cracking the Coding Interview', '2024-09-12', 1045),
(36, 36, 'Principles', '2024-09-15', 1046),
(37, 37, 'Deep Learning with Python', '2024-09-20', 1047),
(38, 38, 'Sapiens', '2024-09-25', 1048),
(39, 39, 'Zero to One', '2024-09-28', 1049),
(40, 40, 'Hooked', '2024-10-01', 1050);


INSERT INTO ReturnStatus (Return_id, Return_cust, Return_book_name, return_date, isbn_book2) VALUES
(1, 'Amit Sharma', 'The Alchemist', '2024-05-10', 1001),
(2, 'Priya Mehta', 'Rich Dad Poor Dad', '2024-05-20', 1011),
(3, 'Rahul Verma', 'Clean Code', '2024-05-30', 1021),
(4, 'Sneha Kapoor', 'Atomic Habits', '2024-06-10', 1031),
(5, 'Arjun Singh', 'The Pragmatic Programmer', '2024-06-15', 1022),
(6, 'Pooja Patel', 'Harry Potter', '2024-06-20', 1002),
(7, 'Vikram Rao', 'The Intelligent Investor', '2024-06-25', 1012),
(8, 'Neha Joshi', 'Deep Work', '2024-07-05', 1033),
(9, 'Rohan Gupta', 'Python Crash Course', '2024-07-12', 1024),
(10, 'Anjali Desai', 'Think and Grow Rich', '2024-07-15', 1013),
(11, 'Suresh Nair', 'The Great Gatsby', '2024-07-20', 1004),
(12, 'Kiran Kumar', 'Start with Why', '2024-07-25', 1036),
(13, 'Meera Iyer', 'One Up on Wall Street', '2024-08-05', 1014),
(14, 'Deepak Reddy', 'The Hobbit', '2024-08-12', 1007),
(15, 'Rita Shah', 'Mindset', '2024-08-20', 1038),
(16, 'Sanjay Yadav', 'Introduction to Algorithms', '2024-08-25', 1023),
(17, 'Asha Pillai', 'The Power of Now', '2024-09-01', 1034),
(18, 'Manish Trivedi', 'Financial Freedom', '2024-09-05', 1018),
(19, 'Sunita Rao', 'Head First Java', '2024-09-10', 1025),
(20, 'Rajesh Kulkarni', 'Make Your Bed', '2024-09-15', 1037),
(21, 'Komal Dixit', 'Unshakeable', '2024-09-20', 1017),
(22, 'Vivek Tiwari', 'Effective C++', '2024-09-25', 1026),
(23, 'Shalini Saxena', 'Can\'t Hurt Me', '2024-10-01', 1035),
(24, 'Gopal Menon', 'Design Patterns', '2024-10-05', 1027),
(25, 'Varun Ahuja', 'The Subtle Art', '2024-10-10', 1039),
(26, 'Priyanka Chawla', 'You Don\'t Know JS', '2024-10-15', 1028),
(27, 'Ramesh Patel', 'I Will Teach You To Be Rich', '2024-10-20', 1019),
(28, 'Shreya Ghosh', 'JavaScript: The Good Parts', '2024-10-25', 1029),
(29, 'Nikhil Deshmukh', 'Awaken the Giant Within', '2024-11-01', 1040),
(30, 'Swati Agarwal', 'Automate the Boring Stuff', '2024-11-05', 1030);


#1Retrieve the book title, category, and rental price of all available books
select Book_title,Rental_price,Rental_price from Books
where status='yes';

#2List the employee names and their respective salaries in descending order of salary.
select * from Employee
order by salary desc;

#3Retrieve the book titles and the corresponding customers who have issued those books
select Return_book_name,Return_cust
from ReturnStatus;

#4Display the total count of books in each category.
select count(book_title),category
from Books
group by category;

#5Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000
select Emp_name,position
from Employee
where salary>50000;

#6List the customer names who registered before 2022-01-01 and have not issued any books yet
select Customer_name from Customer
left join IssueStatus on
Customer.Customer_id=IssueStatus.issued_customer
where Customer.Reg_date<2022-01-01;

#7Display the branch numbers and the total count of employees in each branch.
select Branch.Branch_No,count(Emp_id) from Branch
inner join Employee on 
Branch.Branch_no=Employee.Branch_no
group by Branch.Branch_no;

#8Display the names of customers who have issued books in the month of June 2023
select issued_customer,issue_date
from IssueStatus
where issue_date>=01-07-2023 & issue_date<=31-07-2023;

#9Retrieve book_title from book table containing history
select Book_title from Books
where Book_title like '%History%';

#10Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
select Branch.Branch_no,count(Emp_id) as EmpCount from Branch
inner join Employee on 
Branch.Branch_no=Employee.Branch_no
group by Branch.Branch_no
having count(Emp_id)>5;


#11Retrieve the names of employees who manage branches and their respective branch addresses.
select Emp_name,Branch_address from Employee
inner join Branch
on Branch.Branch_no=Employee.Branch_no
where position like 'Manager';

#12Display the names of customers who have issued books with a rental price higher than Rs. 25.
select issued_customer,Rental_price from IssueStatus
inner join Books
on IssueStatus.isbn_book=Books.ISBN
where Rental_price>25;

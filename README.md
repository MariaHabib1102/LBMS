
# User Management

## 1.1 User Registration
- **Required Fields**: Name, Email, Contact Information, Address, Library Card Number
- **Password Requirements**: Minimum 8 characters; must include uppercase, lowercase, numbers, and special characters.
- **User Role Assignment**: Using Rolify Gem for roles such as Student, Admin, Staff, Librarian.

## 1.2 User Login
- **Password Recovery**: Forgot Password Link, Email Verification

## 1.3 User Profile Management
- **Manage Personal Information**: View and edit profile details (Email is not editable)
- **Change Password**: Update with current password verification

# Book Management

## 2.1 Book Cataloging
- **Book Details**: Title, Author(s), ISBN, Publisher, Publication Date, Edition, Number of Copies, PDF, Likes
- **Likes & Wishlist**: Users can like multiple books (via a join table).
- **Categorization**: Fiction, Non-fiction, Genre
- **Search Functionality**: Search by title, author, ISBN, or keywords

## 2.2 Book Availability
- **Real-time Status**: Available, On Loan, Reserved
- **Hold Requests & Notifications**: Members can place holds and get notified when books are available

## 2.3 Book Circulation
- **Borrow & Return**: Manage checkout and return processes
- **Renewals & Reservations**: Renew and reserve books
- **Overdue Fines**: Automatically calculate fines

# Member Management

## 3.1 Member Registration
- **Required Fields**: Name, Address, Contact Information, Library Card Number, Membership Type
- **Type-Specific Info**: Student ID, Faculty ID

## 3.2 Member Profile Management
- **Manage Personal Information**: View and edit personal details
- **History**: View borrowing, fines, and fees history

## 3.3 Member Privileges
- **Borrowing Limits**: Set based on membership type
- **Renewal Policies & Fine Rates**: Define rules and rates

# Additional Functional Requirements

## 4.1 Search Functionality
- **Search Across System Data**: Books, members, etc.

## 4.2 Reservation System
- **Book Reservations**: Reserve books and get notified when available

## 4.3 Digital Library
- **Support for Electronic Resources**: E-books, journals, and other digital media
- **Digital Rights Management**: Manage DRM
- **E-Book Lending & Return**: Handle electronic borrowing

---
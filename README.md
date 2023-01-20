# User Management System API (Ruby on Rails)

**Requests that can be sent**:

### INFORMATION ABOUT YOUR ACCOUNT
* **GET** request at `/account/{id}` finds an account with `id`, and displays it.
* **POST** request at `/account` creates a new account with specified arguments.
* **PUT** request at `/account/{id}` finds the account with the `id` and updates it with specified arguments.
* **DELETE** request at `/account/{id}` finds the account with the `id` and deletes it.

### LOGIN PAGE
* **GET** request at `/login` finds an account and logs in based on arguments passed.

### LOGOUT PAGE
* **GET** request at `/logout` logs out of the current account.

## THESE REQUESTS ONLY WORK WHEN YOU ARE LOGGED IN TO YOUR ACCOUNT &downarrow; &downarrow;.

### BOOKS
* **GET** request at `/book` will return a list of all the books.
* **POST** request at `/book` will add a book based on specified arguments.
* **PUT** request at `/book` will update a certain book based on specified arguments (based on ID).
* **DELETE** request at `/book` will delete a certain book (based on ID).

### SEARCH (WITH NAME OF BOOK)
* **GET** request at `/bookname` with query argument: *bookname* will find a book and return it.

### SEARCH (WITH AUTHOR OF BOOK)
* **GET** request at `/byauthor` with query argument: *author* will find the first book by author present in the database and return it.
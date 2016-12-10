# User(id: integer, first_name: string, last_name: string, email: string, password_digest: string, created_at: datetime, updated_at: datetime)

User.create(first_name: "Allain" , last_name: "Dollete", email: "allain.dollete@gmail.com", password_digest: 'password')


# Trip(id: integer, title: string, description: string, country: string, state: string, city: string, address: string, user_id: integer, created_at: datetime, updated_at: datetime)
Trip.create(title: string, description: string, country: string, state: string, city: string, address: string, user_id: integer)

# Event(id: integer, title: string, description: string, starts_at: datetime, trip_id: integer, created_at: datetime, updated_at: datetime)
Event.create(title: string, description: string, starts_at: datetime, trip_id: integer)

# Expense(id: integer, expense: string, cost: decimal, trip_id: integer, created_at: datetime, updated_at: datetime)
Expense.create(expense: string, cost: decimal, trip_id: integer)

# Packinglist(id: integer, title: string, trip_id: integer, created_at: datetime, updated_at: datetime)
Packinglist.create(title: string, trip_id: integer)

# Packingitem(id: integer, item: string, packinglist_id: integer, created_at: datetime, updated_at: datetime)
Packingitem.create(item: string, packinglist_id: integer)

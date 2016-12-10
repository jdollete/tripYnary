# User(id: integer, first_name: string, last_name: string, email: string, password_digest: string, created_at: datetime, updated_at: datetime)

user = User.create(first_name: "Allain" , last_name: "Dollete", email: "allain.dollete@gmail.com", password: 'password')


# Trip(id: integer, title: string, description: string, country: string, state: string, city: string, address: string, start_date: date, user_id: integer, created_at: datetime, updated_at: datetime)
trip = Trip.create(title: "Mimimimiami!!", description: "A trip to Miami, Florida", country: "US", state: "Florida", city: "Miami Beach", address: "4441 Collins Ave", start_date: "2016-12-25", user_id: 1)

# Event(id: integer, title: string, date: date, trip_id: integer, created_at: datetime, updated_at: datetime)
event1 = Event.create(title: "Arrival", date: "2016-12-25", trip_id: trip.id)
event2 = Event.create(title: "Beach", date: "2016-12-26", trip_id: trip.id)
event3 = Event.create(title: "Bars", date: "2016-12-27", trip_id: trip.id)
event4 = Event.create(title: "Departure", date: "2016-12-28", trip_id: trip.id)

# Eventitem(id: integer, description: string, starts_at: time, event_id: integer, created_at: datetime, updated_at: datetime)
Eventitem.create(description: "Departure from JFK", starts_at: "12:00:00", event_id: event1.id)
Eventitem.create(description: "Land at Miami Airpost", starts_at: "15:00:00", event_id: event1.id)
Eventitem.create(description: "Check out the beaches", starts_at: "08:00:00", event_id: event2.id)
Eventitem.create(description: "Go Bar hopping", starts_at: "18:00:00", event_id: event3.id)
Eventitem.create(description: "Departure from Miami Airport", starts_at: "5:00:00", event_id: event4.id)

# # Expense(id: integer, expense: string, cost: decimal, trip_id: integer, created_at: datetime, updated_at: datetime)
# Expense.create(expense: "Flight Tickets", cost: 849.99, trip_id: trip.id)
Expense.create(expense: "Hotel", cost: 1500.00, trip_id: trip.id)
Expense.create(expense: "Food", cost: 359.50, trip_id: trip.id)
Expense.create(expense: "Lyft Rides", cost: 125.32, trip_id: trip.id)
Expense.create(expense: "Misc.", cost: 49.50, trip_id: trip.id)

# Packinglist(id: integer, title: string, trip_id: integer, created_at: datetime, updated_at: datetime)
packlist1 = Packinglist.create(title: "General Packing List", trip_id: trip.id)
packlist2 = Packinglist.create(title: "Allain's Packing List", trip_id: trip.id)
packlist3 = Packinglist.create(title: "Eunice's Packing List", trip_id: trip.id)

# # Packingitem(id: integer, item: string, packinglist_id: integer, created_at: datetime, updated_at: datetime)
Packingitem.create(item: "Towel", packinglist_id: packlist1.id)
Packingitem.create(item: "Camera", packinglist_id: packlist1.id)
Packingitem.create(item: "Umbrella", packinglist_id: packlist1.id)

Packingitem.create(item: "Bruno Mars Hat", packinglist_id: packlist2.id)
Packingitem.create(item: "Prep Shorts", packinglist_id: packlist2.id)
Packingitem.create(item: "Hawaiian Shirt", packinglist_id: packlist2.id)

Packingitem.create(item: "Kindle", packinglist_id: packlist3.id)
Packingitem.create(item: "Backpack", packinglist_id: packlist3.id)
Packingitem.create(item: "Advil", packinglist_id: packlist3.id)

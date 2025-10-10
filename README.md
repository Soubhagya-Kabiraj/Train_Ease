# Train_Ease
This is my second Advanced JAVA full stack project which is RAILWAY TICKET BOOKING APP called Train_Ease with MIT License.
# 🚆 Railway Ticket Booking App

A full-featured **Railway Ticket Booking System** designed to simplify the process of train management and ticket reservations.
The application provides separate modules for **Admin** and **User**, ensuring secure and efficient control over railway operations and bookings.

---

## 🧭 Table of Contents

* [Overview](#overview)
* [Features](#features)

  * [Admin Module](#admin-module)
  * [User Module](#user-module)
* [Tech Stack](#tech-stack)
* [Project Structure](#project-structure)
* [Screenshots](#screenshots)
* [Future Enhancements](#future-enhancements)
* [Contributors](#contributors)
* [License](#license)

---

## 📝 Overview

The **Railway Ticket Booking App** allows users to search trains, book tickets, and view their booking history.
Admins can manage train records, update schedules, and view booking details.
This project demonstrates CRUD operations, data validation, and role-based access management.

---

## ✨ Features

### 👑 Admin Module

* ➕ **Add Train:** Add new train details (train number, name, route, timings, etc.)
* ✏️ **Update Train:** Edit train details or schedule
* ❌ **Delete Train:** Remove train data from the system
* 🔍 **Search Train:** Find trains using various filters
* 📄 **View Booking Details:** Display all booking records with user info

### 🙍‍♂️ User Module

* 🏠 **Home Page:** Overview and navigation
* 📋 **Menu Page:** Access all user features
* ℹ️ **About Us Page:** Information about the system
* 📞 **Contact Us Page:** Contact form for feedback
* 🚪 **Logout:** Secure sign-out
* 🚄 **View Train:** Browse available trains
* 🔎 **Search Train:** Find specific trains
* 🎫 **Book Ticket:** Book train tickets easily
* 🧾 **Show Ticket:** View details of current booking
* 📚 **Ticket History:** View all past bookings

---

## 🛠️ Tech Stack

| Category            | Technologies Used                           |
| ------------------- | ------------------------------------------- |
| **Frontend**        | HTML, CSS, JavaScript, Bootstrap            |
| **Backend**         | Java                                        |
| **Database**        | MySQL                                       |
| **Tools**           | Tomcat                                      |
| **Version Control** | Git & GitHub                                |

---

## 📁 Project Structure
```
RailwayTicketBookingApp/
│
├── admin/
│   ├── add_train.*            # Add new train details
│   ├── delete_train.*         # Delete existing train data
│   ├── update_train.*         # Modify train information
│   ├── search_train.*         # Search trains by filters
│   ├── train_details.*        # Display complete train info
│   └── booking_details.*      # View all user booking records
│
├── user/
│   ├── home.*                 # Home page (after login)
│   ├── menu/                  # User menu section (contains user features)
│   │   ├── view_train.*       # View available trains
│   │   ├── search_train.*     # Search specific trains
│   │   ├── book_ticket.*      # Book train tickets
│   │   ├── cancel_ticket.*    # Cancel booked tickets
│   │   ├── show_ticket.*      # View current ticket
│   │   └── ticket_history.*   # View all past bookings
│   │
│   ├── about_us.*             # Information about system and developers
│   ├── contact_us.*           # Contact / feedback form
│   └── logout.*               # Secure logout function
│
├── database/
│   └── Railway_Ticket_Book_App_DB.sql
│
├── LICENSE                    # MIT License file
│
└── README.md                  # Project documentation

```
---

## 📸 Screenshots



---

## 🚀 Future Enhancements

* ✅ Payment Gateway Integration
* ✅ Seat Selection Feature
* ✅ PNR Status Tracking
* ✅ Mobile App Version (React Native / Flutter)
* ✅ Email & SMS Booking Confirmation

---

## 👥 Contributors

* **Soubhagya Kabiraj** – Full Stack Developer
* **Sourav Gorain** – Frontend UI Designer
* **Khushbu Singh** – Database Designer


---

## 🧾 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

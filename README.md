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
* [How to Run](#how-to-run)
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
│   ├── add_train.*
│   ├── delete_train.*
│   ├── update_train.*
│   ├── search_train.*
│   └── booking_details.*
│
├── user/
│   ├── home.*
│   ├── menu.*
│   ├── about_us.*
│   ├── contact_us.*
│   ├── view_train.*
│   ├── search_train.*
│   ├── book_ticket.*
│   ├── show_ticket.*
│   └── ticket_history.*
│
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
│
├── database/
│   └── railway_db.sql
│
└── README.md
```


## ⚙️ How to Run

1. **Clone this repository:**

   ```bash
   git clone https://github.com/yourusername/RailwayTicketBookingApp.git
   ```

2. **Open project in your IDE** (Eclipse etc.)

3. **Import Database:**

   * Open MySQL.
   * Import `Railway_Ticket_Book_App_DB.sql` from the `database` folder.

4. **Run the Application:**

   * For web: Start server (Tomcat).

5. **Login:**

   * **Admin:** username: `admin`, password: `admin`
   * **User:** register a new account or login with existing credentials.

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

> Feel free to fork this repo, raise issues, or submit pull requests to improve this project!

---

## 🧾 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

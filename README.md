# 🚆 Train_Ease – Advanced Railway Ticket Booking System

> 🎯 A full-stack Java web application for railway ticket management and booking, designed for seamless train scheduling, ticketing, and user management.

![Java Badge](https://img.shields.io/badge/Java-Full--Stack-blue?style=flat-square&logo=java)
![License Badge](https://img.shields.io/badge/License-MIT-green?style=flat-square)
![Database](https://img.shields.io/badge/Database-MySQL-orange?style=flat-square&logo=mysql)
![Server](https://img.shields.io/badge/Server-Tomcat-yellow?style=flat-square&logo=apachetomcat)

---

## 🧭 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
  - [Admin Module](#-admin-module)
  - [User Module](#-user-module)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Installation & Run Guide](#-installation--run-guide)
- [Screenshots](#-screenshots)
- [Future Enhancements](#-future-enhancements)
- [Contributors](#-contributors)
- [License](#-license)

---

## 📝 Overview

Train_Ease is a Railway Ticket Booking Web Application built using Advanced Java (JSP + Servlets) and MySQL.  
It offers Admin and User modules for managing train schedules, bookings, and user data.  
The project demonstrates strong concepts of MVC architecture, **CRUD operations**, **form validation**, and **role-based authentication**.

---

## ✨ Features

### 👑 Admin Module

| Feature | Description |
|----------|--------------|
| ➕ Add Train | Add new train details including train number, name, route, and schedule |
| ✏ Update Train | Modify train details and timings |
| ❌ Delete Train | Remove outdated train data |
| 🔍 Search Train | Find trains using filters (route, ID, name, etc.) |
| 📄 View Booking Details | View all user bookings with relevant information |

### 🙍‍♂ User Module

| Feature | Description |
|----------|-------------|
| 🏠 Home Page | Dashboard after login with navigation options |
| 🚄 View Train | Display available trains |
| 🔎 Search Train | Search trains by name or route |
| 🎫 Book Ticket | Book train tickets quickly and securely |
| ❌ Cancel Ticket | Cancel booked tickets before departure |
| 🧾 Show Ticket | Display current ticket details |
| 📚 Ticket History | View all previous bookings |
| ℹ About Us | Learn about the project and team |
| 📞 Contact Us | Submit feedback or queries |
| 🚪 Logout | Secure logout functionality |

---

## 🛠 Tech Stack

| Category | Technology |
|-----------|-------------|
| Frontend | HTML, CSS, JavaScript, Bootstrap |
| Backend | Java (JSP + Servlets) |
| Database | MySQL |
| Server | Apache Tomcat |
| Version Control | Git & GitHub |
| License | MIT License |

---

## 📁 Project Structure
```
Train_Ease/
│
├── admin/
│ ├── add_train.jsp
│ ├── update_train.jsp
│ ├── delete_train.jsp
│ ├── search_train.jsp
│ ├── train_details.jsp
│ └── booking_details.jsp
│
├── user/
│ ├── home.jsp
│ ├── menu/
│ │ ├── view_train.jsp
│ │ ├── search_train.jsp
│ │ ├── book_ticket.jsp
│ │ ├── cancel_ticket.jsp
│ │ ├── show_ticket.jsp
│ │ └── ticket_history.jsp
│ ├── about_us.jsp
│ ├── contact_us.jsp
│ └── logout.jsp
│
├── database/
│ └── Railway_Ticket_Book_App_DB.sql
│
├── LICENSE
│
└── README.md

yaml
Copy code
```

---

## ⚙ Installation & Run Guide

### 🧩 Prerequisites
Ensure you have the following installed:
- ☕ Java JDK 8+
- 🐬 MySQL Server
- 🧱 Apache Tomcat 9+
- 🧾 Eclipse IDE / IntelliJ IDEA (with Dynamic Web Project support)
- 🔗 Git (optional for version control)

### 🚀 Steps to Run the Project

| Step | Description |
|------|--------------|
| 1️⃣ Clone Repository | git clone https://github.com/Soubhagya-Kabiraj/Train_Ease.git |
| 2️⃣ Open in IDE | Import as Dynamic Web Project (Eclipse)  |
| 3️⃣ Configure Database | Import **Railway_Ticket_Book_App_DB.sql** into MySQL |
| 4️⃣ Update DB Credentials | In the Java DAO files, configure your database username/password |
| 5️⃣ Deploy on Tomcat | Add project to Tomcat server and start it |
| 6️⃣ Access Application | Open browser and go to http://localhost:8080/Train_Ease |
| 7️⃣ Login as Admin/User | Use sample credentials or register new users |

---

## 📸 Screenshots

| Module | Description |
|---------|-------------|
| 🏠 Landing Page | Entry point |
| 🖥 Admin Dashboard | Manage trains and view bookings |
| 👤 User Dashboard | Manage personal bookings and view ticket history |
| 📋 User Booking Page | Search and book tickets |
| 🧾 Ticket Details | View and print ticket info |
| 📚 Ticket History | Track previous bookings |

<img width="1902" height="919" alt="Screenshot 2025-10-11 133753" src="https://github.com/user-attachments/assets/c6763195-76e4-4561-9392-27a44f31e7d6" />

<img width="1903" height="919" alt="Screenshot 2025-10-11 133829" src="https://github.com/user-attachments/assets/cc6a711c-229b-40d6-bd86-e00c41003928" />

<img width="1886" height="919" alt="Screenshot 2025-10-11 133914" src="https://github.com/user-attachments/assets/a7d11509-9b90-49ae-9802-025a87880c94" />

<img width="1902" height="919" alt="Screenshot 2025-10-11 134025" src="https://github.com/user-attachments/assets/dabfcdd3-33f9-493c-aae3-27e31ae5c8aa" />

<img width="1883" height="921" alt="Screenshot 2025-10-11 134104" src="https://github.com/user-attachments/assets/355d4c52-6a41-4667-a48f-7b17055c2d99" />

<img width="1882" height="920" alt="Screenshot 2025-10-11 134154" src="https://github.com/user-attachments/assets/ccfdc924-6133-457d-939d-63141a513df0" />

---

## 🚀 Future Enhancements

✅ Payment Gateway Integration (Razorpay / Paytm)  
✅ Real-Time Seat Selection UI  
✅ PNR Status Tracking  
✅ Email & SMS Confirmation  
✅ Mobile App Version (Flutter / React Native)

---

## 👥 Contributors

| Name | Role |
|------|------|
| 🧑‍💻 Soubhagya Kabiraj | Full Stack Developer |
| 🎨 Sourav Gorain | Frontend UI Designer |
| 🗄 Khushbu Singh | Database Designer |

---

## 🧾 License

This project is licensed under the *MIT License*.  
See the [LICENSE](LICENSE) file for details.

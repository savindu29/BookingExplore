# BookingExplore - Hotel Room Booking System

BookingExplore is a hotel room booking system created using JSP Servlet technology. It utilizes MySQL as the database and incorporates technologies like Bootstrap, AJAX, and jQuery. The project follows a layered architecture and implements the Singleton design pattern. It provides a dashboard for administrators and uses JWT authentication for secure access.


## Introduction

BookingExplore is a system for booking hotel rooms. It makes it easy for customers to find and reserve rooms. The system uses a user-friendly interface and offers various features for both hotel administrators and customers.

## Technologies Used
- JSP (JavaServer Pages): Technology for creating dynamic web pages.
- Servlets: Java classes that handle requests and responses in the web application.
- MySQL: Database management system for storing and managing data.
- Bootstrap: Framework for creating visually appealing and responsive designs.
- AJAX (Asynchronous JavaScript and json): Allows data exchange with the server without refreshing the page.
- jQuery: JavaScript library for simplifying DOM manipulation and event handling.
- JWT (JSON Web Tokens): Secure method for transmitting authentication data as JSON objects.

## Architecture
The project follows a layered architecture design, which separates different parts of the system for easier development and maintenance:

- Presentation Layer: Handles the user interface, including web pages, CSS, and client-side scripts.
- Controller Layer: Manages servlets that process requests and generate responses.
- Service Layer: Contains the business logic and coordinates interactions between the presentation layer and data access layer.
- Data Access Layer: Handles database operations, such as retrieving and storing data in MySQL.

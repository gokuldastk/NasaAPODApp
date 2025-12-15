# NASA APOD iOS App

A clean and modern iOS application built with **SwiftUI** that displays NASA’s **Astronomy Picture of the Day (APOD)** using NASA’s public API. 

---

##  Features

- Fetches and displays **NASA Astronomy Picture of the Day**
- Supports both **image and video** APOD entries
- **Date picker** to view APODs from different dates
- Validates date range (from **1995-06-16** to today)
- **Splash screen** with space-themed branding
- Loading and error states with retry support
- Full-screen image viewing

---

##  Architecture

The app follows the **MVVM (Model-View-ViewModel)** architecture:

- **Model** – Data models mapped from the NASA API  
- **ViewModel** – Handles business logic, API calls, and state management  
- **View** – SwiftUI views responsible only for UI rendering  

This separation ensures:
- Better readability
- Easier testing
- Scalable and maintainable code

---

##  Tech Stack

- SwiftUI
- MVVM Architecture
- Async/Await
- URLSession
- Codable
- GitHub Desktop for version control

---

##  API Used

**NASA Astronomy Picture of the Day (APOD)**

Endpoint: https://api.nasa.gov/planetary/apod


Query Parameters:
- `api_key` – NASA API key (or `DEMO_KEY`)
- `date` – Optional (YYYY-MM-DD)

---

##  Getting Started

### Prerequisites
- Xcode 15 or later
- iOS 16+

### Setup
1. Clone the repository
2. Open the `.xcodeproj` file in Xcode
3. Replace `DEMO_KEY` with your own NASA API key (optional)
4. Run the app on simulator or device

---

##  UI & Design

- Space-themed splash screen inspired by modern streaming apps
- Subtle dark-blue color palette
- Focus on readability and content
- Supports Dark Mode

---

##  Notes

- The splash screen is implemented as a **post-launch SwiftUI view**  
  (the actual launch screen follows Apple’s static storyboard guidelines).
- API data is sanitized (for example, trimming unwanted whitespace in text fields).
- Error handling is implemented for invalid dates and network failures.

---

##  Future Improvements

- Image caching
- Favorites support
- Unit tests for ViewModels
- Share APOD content

---

##  Author

Gokul

---

Thank you for reviewing this project 🙌


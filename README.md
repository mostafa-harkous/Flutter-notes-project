# Flutter Notes App

A simple yet functional notes application built with Flutter and Firebase. It allows users to manage their personal notes with features for creating, updating, deleting, and categorizing them by color. The app demonstrates modern Flutter development practices, including state management with Riverpod and backend integration with Firebase.

## Features

- **Firebase Authentication:** Secure user sign-up and login with email and password.
- **Firestore CRUD Operations:** Create, Read, Update, and Delete notes, which are stored and synced with Cloud Firestore.
- **Note Customization:** Assign different colors (Orange or Blue) to notes for better organization.
- **State Management:** Clean and scalable state management using `flutter_riverpod`.
- **User-Friendly UI:** A clean interface with interactive dialogs for confirmations, such as deleting a note.

## Tech Stack

- **Framework:** Flutter
- **Backend:** Firebase (Authentication, Cloud Firestore)
- **State Management:** `flutter_riverpod`
- **Dialogs:** `awesome_dialog`

## Project Structure

The project follows a feature-first architecture to keep the code organized and scalable.

```
lib/
└── features/
    ├── auth/         # Handles user authentication (login, signup)
    │   ├── providers/
    │   ├── viewmodels/
    │   └── views/
    └── notes/        # Manages all note-related functionality
        ├── models/
        ├── provider/
        ├── services/
        ├── viewmodels/
        └── views/
```

- **`auth/`**: Contains all logic and UI for user authentication screens and widgets.
- **`notes/`**: Contains the core logic for managing notes, including the main notes list, note details, and create/update screens.
- **`services/`**: The `NoteFirebaseService.dart` class abstracts all interactions with Firebase Firestore.
- **`providers/` & `viewmodels/`**: State management is handled by Riverpod, with providers making view models available to the UI.

### Prerequisites

- Flutter SDK (Version 3.16.7 is used in this project, consider using [FVM](https://fvm.app/)).
- Java 17

Note : Please DO NOT use any different versions , doing so may lead to build ERRORS !!  

### Images from the App 

![image alt](https://github.com/mostafa-harkous/Flutter-notes-project/blob/715b127f3f4225c2f6395dd71528937bf075a956/Screenshot%202025-09-20%20212611.png)

![image alt](https://github.com/mostafa-harkous/Flutter-notes-project/blob/715b127f3f4225c2f6395dd71528937bf075a956/Screenshot%202025-09-20%20212619.png)
![image alt](https://github.com/mostafa-harkous/Flutter-notes-project/blob/715b127f3f4225c2f6395dd71528937bf075a956/Screenshot%202025-09-20%20212631.png)

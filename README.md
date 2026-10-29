# 🌍 Travel Companion App

A Flutter mobile app for planning trips. You can browse destinations and their hotels, save favourites, see hotels on a map, and book stays. Everything is stored on the device in SQLite, so it works offline.

<p>
<img width="200" alt="Screenshot 1" src="https://github.com/user-attachments/assets/f9c4bd0d-dd1f-4ddf-96d6-00305e190065" />
<img width="200" alt="Screenshot 2" src="https://github.com/user-attachments/assets/cb69974d-2c45-44d8-89db-a420615ea0b8" />
<img width="200" alt="Screenshot 3" src="https://github.com/user-attachments/assets/2c152b27-3702-4be8-aa77-f7b3e2faf982" />
<img width="200" alt="Screenshot 4" src="https://github.com/user-attachments/assets/2e584079-b78d-4283-87c3-e37b5f392e1e" />
</p>

<details>
<summary>More screenshots</summary>
<p>
<img width="200" alt="Screenshot 5" src="https://github.com/user-attachments/assets/f3431eef-acac-48a8-9cbc-c6d62565534c" />
<img width="200" alt="Screenshot 6" src="https://github.com/user-attachments/assets/e17843f5-63d4-45ec-b8fc-ec5bb650506a" />
<img width="200" alt="Screenshot 7" src="https://github.com/user-attachments/assets/16a1f4ad-af39-4929-89ba-cf2c20e7c5ed" />
<img width="200" alt="Screenshot 8" src="https://github.com/user-attachments/assets/4908ea0b-2ed2-4e48-86cd-cfb82cd88400" />
<img width="200" alt="Screenshot 9" src="https://github.com/user-attachments/assets/ed78b62e-b1f3-4cb0-a772-9facd2e7251f" />
<img width="200" alt="Screenshot 10" src="https://github.com/user-attachments/assets/98854b4b-7b9a-4c6e-b931-b4cf7ab43fdf" />
</p>
</details>

## Features

- 🔐 **Sign up / log in:** local accounts with SHA-256 hashed passwords; the session is remembered with `shared_preferences`
- 🗺️ **Destinations and hotels:** carousels on the home screen, plus a detail page for each hotel
- 🔍 **Search:** find hotels by name or address
- 💖 **Favourites:** save hotels and revisit them later
- 📆 **Bookings:** choose dates and guests, add special requests, and see the total price
- 📍 **Map view:** hotel locations on Google Maps
- 🗂️ **Offline:** hotels, users, favourites and bookings all live in a local SQLite database (`sqflite`)

## Tech stack

Flutter (Dart) · SQLite via `sqflite` · `shared_preferences` · `google_maps_flutter` · `crypto` · Material Design

## Project structure

```
travel_manager/lib/
├── main.dart              app entry and theme
├── Database/              SQLite setup and queries (database_helper.dart)
├── models/                Hotel, Booking, Destination, Activity
├── screens/               login, register, home, destination, hotel detail, booking, favourites
├── views/map_page.dart    Google Maps view
└── widgets/               carousels, search delegate, booking dialog, auth wrapper
```

## Getting started

**You'll need:** the [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart 3.7+) and an Android emulator or device.

```bash
git clone https://github.com/mercyy1/Travel-Companion-App.git
cd Travel-Companion-App/travel_manager
flutter pub get
flutter run
```

**Map view:** add a Google Maps API key in `android/app/src/main/AndroidManifest.xml` (replace `put key here`). Keep real keys out of the repo.

**Tests:** run `flutter test` for the model serialisation tests.

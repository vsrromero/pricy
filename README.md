# 📦 Pricy — Smart Price Tracking & Shopping Intelligence

Pricy is a modern Flutter application designed to make shopping smarter.
It helps users compare prices across stores, track product trends, manage shopping lists, and contribute to a shared price database powered by Supabase.

Pricy combines community-driven data with clean UI/UX and real-time updates to deliver accurate, transparent, and user-friendly pricing information.

## 🚀 Features

### 🔍 Price Search & Comparison

- Search any product by name or barcode
- View price variations across nearby markets
- Real-time median price and contributions

### 🛒 Smart Shopping Lists

- Create shopping lists with live price suggestions
- Auto-populate product details, category, and expected cost
- "Shopping Mode" showing the cheapest route store-by-store

### 🧠 Product Intelligence

- Community-driven price entries
- Automatic category/subcategory assignment
- Suggestions moderation with admin approval

### 📍 Store & Location Awareness

- Nearby markets based on geolocation
- Earthdistance + PostGIS-powered proximity calculations

### 🔐 Secure Authentication

- Sign in with Apple or Google
- Email/password optional
- Full RLS protection using Supabase policies

### 📊 Activity & Analytics (Admin)

- Price accuracy insights
- User contribution history
- Fraud detection (abnormal price patterns)

## 🏛 Architecture Overview

Pricy follows a clean, scalable structure:

```
lib/
 ├── app/               # App entry, routing, lifecycle
 ├── modules/           # Feature modules (products, lists, auth)
 ├── shared/
 │    ├── themes/       # Colors, typography, dark/light themes
 │    ├── constants/    # App-wide constants
 │    ├── models/       # Data models
 │    ├── exceptions/   # Custom exceptions
 │    └── utils/        # Helpers, formatters, validators
 └── main.dart
```

Backend powered by:

- Supabase Database
- Row-Level Security
- Postgres functions & triggers
- Realtime price updates

## 🛠 Tech Stack

### Frontend

- Flutter 3.x
- Dart
- Material 3
- GoRouter (navigation)
- Riverpod or Bloc (state management — WIP decision)

### Backend

- Supabase
- PostgreSQL + RLS
- PostGIS (earthdistance, location queries)
- Triggers for price statistics
- Admin and public policies

## 📦 Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/yourusername/pricy.git
cd pricy
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Configure environment variables

Create a .env file:

```
SUPABASE_URL=your-url
SUPABASE_ANON_KEY=your-anon-key
SUPABASE_SERVICE_ROLE=your-service-role (admin only)
```

### 4️⃣ Run the app

```bash
flutter run
```

## 🔐 Authentication Setup

Pricy supports:

- Sign in with Apple (iOS/macOS)
- Sign in with Google
- Optional email/password

Make sure your Supabase project is configured accordingly.

## 🗄 Database Overview

Core tables:

- products
- product_categories
- product_subcategories
- product_category_translations
- product_subcategory_translations
- product_price_stats
- price_entries
- shopping_lists
- shopping_list_items
- shopping_list_snapshots
- user_activity_log

All tables run with hardened Row Level Security.

## 🧪 Tests

```bash
flutter test
```

## 📅 Roadmap

- [ ] Product detail screen
- [ ] Camera barcode scanner
- [ ] List-sharing between users
- [ ] Market navigation route optimization
- [ ] Price anomaly alerts
- [ ] Dark mode
- [ ] AI-powered product suggestion


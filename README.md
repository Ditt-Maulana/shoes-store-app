# 🛍️ Shoe Store App - Flutter E-Commerce Application

Aplikasi mobile e-commerce sepatu yang dibangun dengan Flutter, mengikuti desain modern dan clean dari Figma.

## 📱 Screenshot

![Shoe Store App](https://via.placeholder.com/800x400?text=Shoe+Store+App+Screenshot)

## ✨ Fitur Utama

### 🔐 Authentication
- **Login** dengan validasi
- **Register** dengan konfirmasi password
- Social login UI (Google, Facebook, Apple)

### 🏠 Home
- Search bar untuk mencari produk
- Banner promo 20% discount
- Filter kategori (All, Running, Casual, Sports, Basketball)
- **GridView** produk sepatu (2 kolom)
- Rating dan harga produk

### 🔍 Search
- Real-time search functionality
- Popular searches chips
- Recent searches history
- **ListView** hasil pencarian

### 🔔 Notifications
- **ListView** notifikasi
- Read/Unread indicator
- Timestamp
- Manage notifications

### 👤 Profile
- Profile information card
- Stats cards (Orders, Wishlist, Reviews)
- **Edit Profile** - ubah nama, email, phone, address
- Menu settings
- Logout dengan konfirmasi

### 🎯 Navigation
- **Bottom Navigation Bar** dengan 5 tabs
- Smooth page transitions
- Navigator push/pop/pushReplacement

## 🎨 Design

- **Design System**: Minimalis & Clean
- **Color Palette**: 
  - Background: `#FFFFFF`
  - Card: `#F5F5F5`
  - Primary: `#1F41BB`
  - Text: `#000000`
- **Typography**: Modern & Readable
- **Layout**: Responsive & Mobile-first

## 🛠️ Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: StatefulWidget
- **Navigation**: Navigator 2.0
- **UI Components**: Material Design 3

## 📋 Widget yang Digunakan

✅ Container  
✅ Text  
✅ Button (ElevatedButton, OutlinedButton, IconButton)  
✅ Icon  
✅ Image  
✅ Row & Column  
✅ Padding  
✅ **ListView** (Search, Notification, Profile)  
✅ **GridView** (Home - Product Grid)  
✅ TextField (Login, Register, Search, Edit Profile)  
✅ **Navigator** (Push, Pop, PushReplacement)  
✅ **Bottom Navigation Bar** (5 tabs)  

## 📂 Struktur Project

```
lib/
├── main.dart                    # Entry point
├── login.dart                   # Login page
├── register.dart                # Register page
├── edit_profile.dart            # Edit profile page
├── main_screen.dart             # Bottom Nav (5 tabs)
├── models/
│   └── product.dart             # Product model
├── tabs/
│   ├── home_tab.dart            # Home with GridView
│   ├── search_tab.dart          # Search with ListView
│   ├── notification_tab.dart    # Notifications ListView
│   └── profile_tab.dart         # Profile & settings
└── assets/
    ├── images/                  # Social icons
    └── product/                 # Product images
```

## 🚀 Cara Menjalankan

### Prerequisites
- Flutter SDK (>= 3.9.2)
- Dart SDK
- Android Studio / VS Code
- Chrome / Edge (untuk web)

### Installation

1. **Clone repository**
```bash
git clone https://github.com/YOUR_USERNAME/shoe-store-app.git
cd shoe-store-app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run aplikasi**

**Web (Chrome):**
```bash
flutter run -d chrome
```

**Windows:**
```bash
flutter run -d windows
```

**Mobile (Android/iOS):**
```bash
flutter run
```

## 📱 Testing di Mobile View

Untuk melihat tampilan mobile di Chrome:
1. Tekan `F12` atau klik kanan → Inspect
2. Klik icon **Toggle Device Toolbar** (Ctrl+Shift+M)
3. Pilih device: **iPhone 12 Pro** atau **Pixel 5**
4. Recommended size: **400 x 800**

## 🎯 Fitur yang Sudah Diimplementasikan

- [x] Login & Register dengan validasi
- [x] Bottom Navigation Bar (5 tabs)
- [x] Home dengan GridView produk
- [x] Search dengan ListView
- [x] Notifications dengan ListView
- [x] Profile dengan menu & stats
- [x] Edit Profile fungsional
- [x] Category filtering
- [x] Real-time search
- [x] Form validation
- [x] Navigation flow lengkap
- [x] Error handling
- [x] Responsive layout

## 📝 Requirements Tugas

✅ Minimal 3 halaman (dibuat 8 halaman!)  
✅ Semua widget wajib digunakan  
✅ ListView & GridView  
✅ Bottom Navigation Bar  
✅ Navigator push/pop  
✅ TextField dengan validasi  
✅ Mengikuti flow Figma  
✅ Design clean & modern  

## 👨‍💻 Developer

**Nama**: [Nama Anda]  
**NIM**: [NIM Anda]  
**Kelas**: [Kelas Anda]  
**Mata Kuliah**: Pemrograman Mobile  

## 📄 License

This project is created for educational purposes.

## 🙏 Acknowledgments

- Design inspiration from Figma BTNG 2025
- Flutter documentation
- Material Design guidelines

---

**⭐ Don't forget to star this repo if you found it helpful!**

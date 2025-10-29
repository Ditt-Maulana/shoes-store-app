# 🛍️ Shoe Store App - Flutter E-Commerce Application

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Material Design](https://img.shields.io/badge/Material%20Design-757575?style=for-the-badge&logo=material-design&logoColor=white)

[![GitHub Stars](https://img.shields.io/github/stars/Ditt-Maulana/shoes-store-app?style=social)](https://github.com/Ditt-Maulana/shoes-store-app/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/Ditt-Maulana/shoes-store-app?style=social)](https://github.com/Ditt-Maulana/shoes-store-app/network/members)
[![GitHub Issues](https://img.shields.io/github/issues/Ditt-Maulana/shoes-store-app)](https://github.com/Ditt-Maulana/shoes-store-app/issues)

</div>

---

Aplikasi mobile e-commerce sepatu yang dibangun dengan Flutter, mengikuti desain modern dan clean dari Figma.

## 📋 Table of Contents

- [Screenshot](#-screenshot)
- [Fitur Utama](#-fitur-utama)
- [Design](#-design)
- [Technology Stack](#-technology-stack)
- [Dependencies](#-dependencies)
- [Widget yang Digunakan](#-widget-yang-digunakan)
- [Struktur Project](#-struktur-project)
- [Cara Menjalankan](#-cara-menjalankan)
- [Deploy ke Vercel](#-deploy-ke-vercel) 🌐 NEW
- [Future Enhancements](#-future-enhancements)
- [Known Issues](#-known-issues--solutions)
- [Developer](#-developer)

## 📱 Screenshot

<div align="center">
  <img src="https://via.placeholder.com/300x600?text=Login+Screen" alt="Login" width="200"/>
  <img src="https://via.placeholder.com/300x600?text=Home+Screen" alt="Home" width="200"/>
  <img src="https://via.placeholder.com/300x600?text=Profile+Screen" alt="Profile" width="200"/>
</div>

> 💡 **Tip**: Untuk menambahkan screenshot asli, ambil screenshot dari aplikasi Anda dan upload ke folder `screenshots/` di repository ini, lalu ganti URL di atas.

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

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
```

> 💡 Aplikasi ini dibuat dengan Flutter murni tanpa package eksternal tambahan, menunjukkan kemampuan core Flutter.

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
git clone https://github.com/Ditt-Maulana/shoes-store-app.git
cd shoes-store-app
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

## 🌐 Deploy ke Vercel

### Metode 1: Deploy via Vercel Dashboard (Recommended)

1. **Build aplikasi untuk web:**
```bash
flutter build web --release
```

2. **Push ke GitHub** (jika belum):
```bash
git add .
git commit -m "Add Vercel config"
git push origin main
```

3. **Deploy ke Vercel:**
   - Buka [vercel.com](https://vercel.com)
   - Login dengan GitHub
   - Klik **"Add New Project"**
   - Import repository: `shoes-store-app`
   - Vercel akan auto-detect Flutter project
   - Klik **"Deploy"**
   - ✅ Done! App Anda live di `https://your-app.vercel.app`

### Metode 2: Deploy via Vercel CLI

```bash
# Install Vercel CLI
npm i -g vercel

# Login ke Vercel
vercel login

# Deploy
vercel

# Production deploy
vercel --prod
```

### ⚙️ Konfigurasi

File `vercel.json` sudah disediakan dengan konfigurasi:
- Build command: `flutter build web --release`
- Output directory: `build/web`
- SPA routing support

### 🔗 Demo

🚀 **Live Demo**: [https://shoes-store-c8swtlr5y-ditt-maulanas-projects.vercel.app](https://shoes-store-c8swtlr5y-ditt-maulanas-projects.vercel.app)

> 💡 Aplikasi di-deploy menggunakan Vercel. Buka di browser untuk melihat Flutter Shoe Store App secara live!

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

## 🔮 Future Enhancements

- [ ] Backend integration (REST API/Firebase)
- [ ] Database lokal (SQLite/Hive)
- [ ] Shopping cart functionality
- [ ] Payment gateway integration
- [ ] Product detail page
- [ ] Wishlist feature
- [ ] Order history
- [ ] Push notifications
- [ ] Image upload untuk profile
- [ ] Dark mode support
- [ ] Multi-language (i18n)
- [ ] Animation & transitions
- [ ] Unit & Widget testing

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

**Nama**: Aditya Iman Maulana  
**NIM**: A11.2025.16247      
**Kelas**: BTNG  
**Mata Kuliah**: Pemrograman Mobile  

## 🐛 Known Issues & Solutions

### Issue: Build error saat running
**Solusi**: 
```bash
flutter clean
flutter pub get
flutter run
```

### Issue: Asset tidak muncul
**Solusi**: Pastikan sudah menambahkan assets di `pubspec.yaml` dan jalankan `flutter pub get`

### Issue: Hot reload tidak bekerja
**Solusi**: Stop aplikasi dan run ulang dengan `flutter run`

## 📞 Contact & Support

Jika ada pertanyaan atau ingin berkontribusi:

- 📧 Email: [gaharu0473@gmail.com](mailto:gaharu0473@gmail.com)
- 💼 LinkedIn: [Aditya Iman Maulana](https://www.linkedin.com/in/ditt-maulana-78b5b9356)
- 🐙 GitHub: [@Ditt-Maulana](https://github.com/Ditt-Maulana)
- 📸 Instagram: [@adi7_ya_](https://www.instagram.com/adi7_ya_)
- 🎵 TikTok: [@adtzen](https://www.tiktok.com/@adtzen)

## 📄 License

This project is created for educational purposes.

## 🙏 Acknowledgments

- Design inspiration from Figma BTNG 2025
- Flutter documentation
- Material Design guidelines

---

**⭐ Don't forget to star this repo if you found it helpful!**

Made with ❤️ by Ditt-Maulana

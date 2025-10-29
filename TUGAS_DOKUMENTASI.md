# Dokumentasi Tugas Aplikasi Mobile - Shoe Store App

## 📱 Deskripsi Aplikasi
Aplikasi E-Commerce sepatu yang dibangun dengan Flutter, mengikuti desain dari Figma dengan kreativitas tambahan pada UI/UX.

## ✅ Widget Wajib yang Digunakan

### 1. **Container** ✓
- Digunakan di semua halaman untuk layout dan dekorasi
- Contoh: Product card, profile card, banner promo

### 2. **Text** ✓
- Digunakan untuk menampilkan semua teks di aplikasi
- Contoh: Judul, deskripsi produk, label, dll

### 3. **Button** ✓
- ElevatedButton untuk primary actions (Login, Register, Shop Now)
- OutlinedButton untuk secondary actions (Create Account)
- IconButton untuk actions dengan icon
- TextButton untuk dialog actions

### 4. **Icon** ✓
- Icons untuk bottom navigation bar
- Icons untuk menu items (search, filter, favorite, dll)
- Icons untuk notifications dan profile menu

### 5. **Image** ✓
- Image.asset() untuk menampilkan gambar produk sepatu
- Dengan error handling untuk placeholder jika gambar tidak ada

### 6. **Row** ✓
- Layout horizontal untuk:
  - Social login buttons
  - Rating dan price display
  - Profile header
  - Stats cards

### 7. **Column** ✓
- Layout vertikal untuk hampir semua halaman
- Mengatur widget secara vertikal

### 8. **Padding** ✓
- EdgeInsets.symmetric() untuk padding horizontal/vertical
- EdgeInsets.all() untuk padding semua sisi
- EdgeInsets.only() untuk padding spesifik

### 9. **ListView & GridView** ✓
- **GridView**: Menampilkan produk sepatu dalam grid 2 kolom di Home tab
- **ListView**: 
  - Search results di Search tab
  - Notifications di Notification tab
  - Menu items di Profile tab
  - Category filter di Home tab

### 10. **TextField** ✓
- Login page: Email dan Password input
- Register page: Email, Password, Confirm Password
- Search bar di Home dan Search tab
- Dengan validasi dan toggle visibility untuk password

### 11. **Navigator Push / Pop** ✓
- `Navigator.push()`: Login → Register
- `Navigator.pushReplacement()`: Login → MainScreen, Register → Login
- `Navigator.pushAndRemoveUntil()`: Logout dari Profile → Login
- `Navigator.pop()`: Back button di berbagai halaman

### 12. **Bottom Navigation Bar** ✓
- 5 tabs: Home, Search, Cart, Notification, Profile
- Dengan animasi dan highlight untuk selected tab
- Icon khusus untuk Cart (dengan background hitam)

## 📂 Struktur File

```
lib/
├── main.dart                    # Entry point aplikasi
├── login.dart                   # Halaman Login
├── register.dart                # Halaman Register
├── main_screen.dart             # Main screen dengan Bottom Nav Bar
├── models/
│   └── product.dart             # Model data produk
└── tabs/
    ├── home_tab.dart            # Tab Home dengan GridView
    ├── search_tab.dart          # Tab Search dengan ListView
    ├── notification_tab.dart    # Tab Notification dengan ListView
    └── profile_tab.dart         # Tab Profile
```

## 🎨 Fitur Aplikasi

### 1. **Login Page**
- Email dan Password TextField
- Toggle visibility password
- Validasi input
- Social login buttons (Google, Facebook, Apple)
- Navigate ke Register atau MainScreen

### 2. **Register Page**
- Email, Password, Confirm Password TextField
- Toggle visibility password
- Validasi password match
- Social login options
- Navigate kembali ke Login

### 3. **Home Tab**
- Search bar fungsional
- Banner promo dengan gradient
- Category filter chips (All, Running, Casual, Sports, Basketball)
- GridView produk dengan:
  - Product image
  - Product name
  - Rating dengan star icon
  - Price (dengan discount jika ada)
  - Discount badge
  - Favorite button

### 4. **Search Tab**
- Search bar dengan clear button
- Real-time search functionality
- ListView hasil pencarian
- Popular searches chips
- Recent searches history
- Empty state ketika tidak ada hasil

### 5. **Notification Tab**
- ListView notifikasi dengan:
  - Icon dengan warna berbeda per kategori
  - Title dan message
  - Timestamp
  - Read/Unread indicator (blue dot)
- Bottom sheet untuk options:
  - Mark all as read
  - Clear all notifications
  - Notification settings

### 6. **Profile Tab**
- Profile card dengan gradient
- Stats cards (Orders, Wishlist, Reviews)
- Menu items dengan icon:
  - Edit Profile
  - Order History
  - Delivery Address
  - Payment Methods
  - Notifications
  - Privacy & Security
  - Help Center
  - About
- Logout button dengan confirmation dialog

### 7. **Bottom Navigation Bar**
- 5 tabs dengan smooth transition
- Highlight untuk active tab
- Special design untuk Cart button (center, black background)

## 🎯 Kreativitas & Nilai Tambah

1. **Modern UI Design**
   - Gradient backgrounds
   - Soft shadows dan borders
   - Rounded corners konsisten
   - Color scheme yang harmonis (Blue palette)

2. **UX Enhancements**
   - Loading states dengan error handling
   - Form validation dengan feedback
   - Confirmation dialogs untuk destructive actions
   - Empty states dengan helpful messages
   - Search dengan filter dan history

3. **Animations & Interactions**
   - Hover effects pada buttons
   - Smooth page transitions
   - Filter chips animation
   - Bottom sheet modals

4. **Code Quality**
   - Clean code structure
   - Reusable widgets (_buildProductCard, _buildMenuItem, dll)
   - Proper state management
   - TextEditingController dengan dispose
   - Responsive layout dengan SingleChildScrollView

5. **Additional Features**
   - Real-time search functionality
   - Category filtering
   - Discount system
   - Rating system
   - Wishlist/Favorite functionality
   - Social login options

## 🚀 Cara Menjalankan

```bash
# Clone atau buka project
cd login_app

# Get dependencies
flutter pub get

# Run aplikasi
flutter run
```

## 📝 Catatan Penting

1. **Assets**: Pastikan gambar produk ada di folder `assets/product/` atau gunakan placeholder yang sudah disediakan
2. **Flow**: Aplikasi mengikuti flow dari Figma: Login → Register → Home (dengan bottom nav)
3. **Widgets**: Semua widget wajib telah diimplementasikan
4. **Navigator**: Menggunakan push, pop, pushReplacement, dan pushAndRemoveUntil sesuai kebutuhan

## 🎨 Color Palette

- Primary Blue: `#1F41BB`
- Secondary Blue: `#4A90E2`
- Background: `#F1F4FF`
- Text: `#000000`
- Gray: `#ECFIFF4`
- Success: Green shades
- Warning: Orange/Amber shades
- Error: Red shades

## 📱 Screenshots Flow

1. **Login** → Input email & password → Sign In
2. **Register** → Create account → Kembali ke Login
3. **Home** → Browse products → Filter by category → Search
4. **Search** → Search products → View results
5. **Notifications** → View & manage notifications
6. **Profile** → View profile → Manage settings → Logout

---

**Dibuat oleh**: [Nama Anda]  
**Tanggal**: Oktober 2025  
**Framework**: Flutter  
**Desain Acuan**: Figma BTNG 2025


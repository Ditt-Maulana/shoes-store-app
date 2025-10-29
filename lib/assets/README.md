# Assets Folder

## 📂 Struktur Assets

```
lib/assets/
├── images/
│   ├── google.png
│   ├── facebook.png
│   ├── apple.png
│   └── profiles.jpg
└── product/
    ├── Air Max 97.png
    ├── Air Max 98.png
    ├── Air Presto.png
    ├── KD13 EP.png
    └── React Presto.png
```

## 🎨 Assets yang Tersedia

### **Images (Social Icons & Profile)**
- `google.png` - Google icon untuk social login
- `facebook.png` - Facebook icon untuk social login
- `apple.png` - Apple icon untuk social login
- `profiles.jpg` - Default profile picture

### **Product (Shoe Images)**
- `Air Max 97.png` - Nike Air Max 97
- `Air Max 98.png` - Nike Air Max 98
- `Air Presto.png` - Nike Air Presto
- `KD13 EP.png` - Nike KD13 EP
- `React Presto.png` - Nike React Presto

## 📝 Cara Menggunakan

Assets sudah terdaftar di `pubspec.yaml`:

```yaml
flutter:
  assets:
    - lib/assets/images/
    - lib/assets/product/
```

Untuk menggunakan di code:

```dart
Image.asset('lib/assets/product/Air Max 97.png')
```

## ⚠️ Catatan

- Semua file gambar sudah tersedia di folder ini
- Path menggunakan `lib/assets/` karena struktur folder khusus
- Jika gambar tidak ditemukan, akan muncul placeholder icon
- Format: PNG dengan background transparan untuk produk


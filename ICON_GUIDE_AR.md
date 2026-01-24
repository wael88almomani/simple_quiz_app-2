# 📱 App Icon Setup Guide

## ✨ How to Add a Custom Icon

### Option 1: Design Your Own Icon (Recommended)

1. **Design Requirements:**
   - Size: 1024x1024 pixels (minimum 512x512)
   - Format: PNG with transparent background
   - Design: Simple, recognizable icon representing a quiz/exam app
   - Colors: Purple (#6200EA) to match app theme

2. **Icon Suggestions:**
   - 📚 Book with question mark
   - 🎯 Target/bullseye with checkmark
   - 🧠 Brain icon
   - ✅ Quiz paper with pencil
   - 🏆 Trophy with graduation cap

3. **Save your icon as:**
   - `assets/icon/app_icon.png` (full icon with background)
   - `assets/icon/app_icon_foreground.png` (foreground only for adaptive icon)

### Option 2: Use Online Icon Generator

Visit: https://icon.kitchen/
- Choose a base icon (book, quiz, brain)
- Set background color: #6200EA (purple)
- Download and save to `assets/icon/`

### Option 3: Use AI to Generate Icon

Use AI tools like:
- DALL-E
- Midjourney
- Canva AI

**Prompt suggestion:**
"Modern minimalist app icon for quiz and exam preparation app, purple gradient background, book or brain symbol, clean design, 1024x1024"

## 🚀 Generate Icons (After adding your image)

```bash
flutter pub get
flutter pub run flutter_launcher_icons
```

This will automatically generate icons for:
- ✅ Android (all densities)
- ✅ iOS (all sizes)
- ✅ Adaptive icon (Android 8.0+)

## 📐 Current Configuration

- **Background Color**: Purple (#6200EA)
- **Icon Path**: `assets/icon/app_icon.png`
- **Adaptive Foreground**: `assets/icon/app_icon_foreground.png`

## 💡 Quick Temporary Solution

If you need to test immediately, I can create a simple placeholder icon with text "EM2" (Exam Master 2).

---

**After adding your icon files, run:**
```bash
flutter pub run flutter_launcher_icons
```

## 🎨 Free Icon Creation Websites:

1. **Canva** (https://canva.com) - Easy and free
2. **Figma** (https://figma.com) - Professional
3. **Icon Kitchen** (https://icon.kitchen) - Specialized for app icons
4. **Flaticon** (https://flaticon.com) - Thousands of ready-made icons

## ⚠️ Important Note

- The icon should be **clear and distinctive** even at small sizes
- Avoid too much text in the icon
- Use colors consistent with the app (purple/blue)

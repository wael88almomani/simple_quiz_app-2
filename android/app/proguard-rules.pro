# Flutter-specific keep rules to avoid stripping required classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep classes/methods annotated with @Keep
-keep @androidx.annotation.Keep class * { *; }
-keepclassmembers class * {
    @androidx.annotation.Keep *;
}

# Keep AndroidX lifecycle classes used by Flutter plugins
-keep class androidx.lifecycle.** { *; }

# Remove warnings for missing optional classes
-dontwarn io.flutter.embedding.**
-dontwarn io.flutter.plugins.**

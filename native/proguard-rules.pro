# Shell entry points must survive R8 (manifest + JNI + reflection).
-keep class com.android.core.shell.ProxyApplication { *; }
-keep class com.android.core.shell.ProxyComponentFactory { *; }
-keep class com.android.core.shell.JniBridge { *; }
-keepclassmembers class com.android.core.shell.JniBridge {
    native <methods>;
}
# DexMerger / ApplicationReplacer are called from kept shell classes; allow shrinking of unused helpers.
-keep class com.android.core.shell.DexMerger { *; }
-keep class com.android.core.shell.ApplicationReplacer { *; }
-keep class com.android.core.shell.StrEnc { *; }
# CrashGuard + nested handler (shell DEX re-d8; no lambda synthetics).
-keep class com.android.core.shell.CrashGuard { *; }
-keep class com.android.core.shell.CrashGuard$* { *; }

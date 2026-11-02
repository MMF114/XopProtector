# Consuming apps must not strip the embedded shell entry points.
-keep class com.android.core.shell.ProxyApplication { *; }
-keep class com.android.core.shell.ProxyComponentFactory { *; }
-keep class com.android.core.shell.JniBridge {
    native <methods>;
    *;
}
-keep class com.android.core.shell.DexMerger { *; }
-keep class com.android.core.shell.ApplicationReplacer { *; }

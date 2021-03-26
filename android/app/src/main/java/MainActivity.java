package com.ILEO.onlylive;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugins.GeneratedPluginRegistrant;
import android.Manifest;
import androidx.core.content.ContextCompat;
import android.os.Build;
public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.ILEO.onlylive/permisson_handler";// メソッドチャンネル

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler((call, result) -> {
                    if (call.method.equals("test_ch")) {
                        System.out.println(Build.MANUFACTURER);
                       
                }
        }
    );
    }
}
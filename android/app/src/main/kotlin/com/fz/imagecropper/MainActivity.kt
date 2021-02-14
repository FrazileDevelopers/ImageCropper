package com.fz.imagecropper

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.fz.imagecropper/image";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        
        MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL).setMethodCallHandler{ methodcall, result ->
            if(methodcall.method == "GetName") {
                val greetings = helloFromNativeCode()
                result.success(greetings)
            }
        }
    }
    private fun helloFromNativeCode(): String {
    return "Hello from Kotlin"
  }
}

package com.fz.imagecropper

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.fz.imagecropper/image";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        
        MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL).setMethodCallHandler{ call, result ->
            val arguments = call.arguments<Map<String, Any>>()

            if(call.method == "GetName") {
                val name = helloFromNativeCode(arguments["name"])
                result.success(name)
            }
        }
    }
    fun helloFromNativeCode(args: Any?): String {
    val name = args.toString()
    return name
  }
}

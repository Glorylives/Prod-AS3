// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util.080

package com.company.util{
    import flash.system.Capabilities;

    public class 080 {


        public static function CD():String{
            return ((((((((((((((((((((((((((1Zg("avHardwareDisable") + 1Zg("hasAccessibility")) + 1Zg("hasAudio")) + 1Zg("hasAudioEncoder")) + 1Zg("hasEmbeddedVideo")) + 1Zg("hasIME")) + 1Zg("hasMP3")) + 1Zg("hasPrinting")) + 1Zg("hasScreenBroadcast")) + 1Zg("hasScreenPlayback")) + 1Zg("hasStreamingAudio")) + 1Zg("hasStreamingVideo")) + 1Zg("hasTLS")) + 1Zg("hasVideoEncoder")) + 1Zg("isDebugger")) + 1Zg("language")) + 1Zg("localFileReadDisable")) + 1Zg("manufacturer")) + 1Zg("os")) + 1Zg("pixelAspectRatio")) + 1Zg("playerType")) + 1Zg("screenColor")) + 1Zg("screenDPI")) + 1Zg("screenResolutionX")) + 1Zg("screenResolutionY")) + 1Zg("version")));
        }

        private static function 1Zg(_arg1:String):String{
            return ((((_arg1 + ": ") + Capabilities[_arg1]) + "\n"));
        }


    }
}//package com.company.util


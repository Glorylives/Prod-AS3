// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS.0ZC

package __ZS{
    import flash.utils.Dictionary;
    import flash.media.Sound;
    import flash.events.IOErrorEvent;
    import qG.0bJ;
    import _04_._1JZ;
    import flash.net.URLRequest;
    import flash.media.SoundTransform;
    import flash.media.SoundChannel;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class 0ZC {

        private static const 211:String = "{URLBASE}/sfx/{NAME}.mp3";

        private static var iM:String;
        public static var 1HK:Dictionary = new Dictionary();
        private static var R6:Dictionary = new Dictionary(true);


        public static function load(_arg1:String):Sound{
            return ((1HK[_arg1] = ((1HK[_arg1]) || (11N(_arg1)))));
        }

        public static function 11N(_arg1:String):Sound{
            var _local2:Sound = new Sound();
            _local2.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
            _local2.load(1e4(_arg1));
            return (_local2);
        }

        private static function 1Wl():String{
            var setup:0bJ;
            var base:String = "";
            try
            {
                setup = _1JZ.0JF().getInstance(0bJ);
                base = setup.1HF(true);
            } catch(error:Error)
            {
                base = "localhost";
            };
            return (base);
        }

        private static function 1e4(_arg1:String):URLRequest{
            iM = ((iM) || (1Wl()));
            var _local2:String = 211.replace("{URLBASE}", iM).replace("{NAME}", _arg1);
            return (new URLRequest(_local2));
        }

        public static function play(_arg1:String, _arg2:Number=1, _arg3:Boolean=true):void{
            var actualVolume:Number;
            var trans:SoundTransform;
            var channel:SoundChannel;
            var name:String = _arg1;
            var volumeMultiplier:Number = _arg2;
            var isFX:Boolean = _arg3;
            var sound:Sound = load(name);
            var volume:* = (Parameters.data_.SFXVolume * volumeMultiplier);
            try
            {
                actualVolume = ((((((Parameters.data_.playSFX) && (isFX))) || (((!(isFX)) && (Parameters.data_.playPewPew))))) ? volume : 0);
                trans = new SoundTransform(actualVolume);
                channel = sound.play(0, 0, trans);
                channel.addEventListener(Event.SOUND_COMPLETE, 1xx, false, 0, true);
                R6[channel] = volume;
            } catch(error:Error)
            {
            };
        }

        private static function 1xx(_arg1:Event):void{
            var _local2:SoundChannel = (_arg1.target as SoundChannel);
            delete R6[_local2];
        }

        public static function 0kN(_arg1:Number):void{
            var _local2:SoundChannel;
            var _local3:SoundTransform;
            for each (_local2 in R6)
            {
                R6[_local2] = _arg1;
                _local3 = _local2.soundTransform;
                _local3.volume = ((Parameters.data_.playSFX) ? R6[_local2] : 0);
                _local2.soundTransform = _local3;
            };
        }

        public static function 1NS():void{
            var _local1:SoundChannel;
            var _local2:SoundTransform;
            for each (_local1 in R6)
            {
                _local2 = _local1.soundTransform;
                _local2.volume = ((Parameters.data_.playSFX) ? R6[_local1] : 0);
                _local1.soundTransform = _local2;
            };
        }

        public static function onIOError(_arg1:IOErrorEvent):void{
        }


    }
}//package __ZS


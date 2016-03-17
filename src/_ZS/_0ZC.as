// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS.0ZC

package _ZS{
import _qG._0bJ;

import flash.utils.Dictionary;
    import flash.media.Sound;
    import flash.events.IOErrorEvent;
    import _04_._1JZ;
    import flash.net.URLRequest;
    import flash.media.SoundTransform;
    import flash.media.SoundChannel;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.events.Event;

    public class _0ZC {

        private static const _211:String = "{URLBASE}/sfx/{NAME}.mp3";

        private static var iM:String;
        public static var _1HK:Dictionary = new Dictionary();
        private static var R6:Dictionary = new Dictionary(true);


        public static function load(_arg1:String):Sound{
            return ((_1HK[_arg1] = ((_1HK[_arg1]) || (_11N(_arg1)))));
        }

        public static function _11N(_arg1:String):Sound{
            var _local2:Sound = new Sound();
            _local2.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
            _local2.load(_1e4(_arg1));
            return (_local2);
        }

        private static function _1Wl():String{
            var setup:_0bJ;
            var base:String = "";
            try
            {
                setup = _1JZ._0JF().getInstance(_0bJ);
                base = setup._1HF(true);
            } catch(error:Error)
            {
                base = "localhost";
            };
            return (base);
        }

        private static function _1e4(_arg1:String):URLRequest{
            iM = ((iM) || (_1Wl()));
            var _local2:String = _211.replace("{URLBASE}", iM).replace("{NAME}", _arg1);
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
                channel.addEventListener(Event.SOUND_COMPLETE, _1xx, false, 0, true);
                R6[channel] = volume;
            } catch(error:Error)
            {
            };
        }

        private static function _1xx(_arg1:Event):void{
            var _local2:SoundChannel = (_arg1.target as SoundChannel);
            delete R6[_local2];
        }

        public static function _0kN(_arg1:Number):void{
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

        public static function _1NS():void{
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


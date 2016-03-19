// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS._VA

package _ZS{
    import flash.media.SoundTransform;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.googleanalytics.GA;

    public class _VA {

        private static var _15q:SoundTransform;


        public static function load():void{
            _15q = new SoundTransform(((Parameters.data_.playSFX) ? 1 : 0));
        }

        public static function _12W(_arg1:Boolean):void{
            GA.global().trackEvent("sound", ((_arg1) ? "soundOn" : "soundOff"));
            Parameters.data_.playSFX = _arg1;
            Parameters.save();
            _0ZC._1NS();
        }

        public static function _00G(_arg1:Number):void{
            Parameters.data_.SFXVolume = _arg1;
            Parameters.save();
            _0ZC._0kN(_arg1);
        }


    }
}//package __ZS


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS.VA

package __ZS{
    import flash.media.SoundTransform;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.googleanalytics.GA;

    public class VA {

        private static var 15q:SoundTransform;


        public static function load():void{
            15q = new SoundTransform(((Parameters.data_.playSFX) ? 1 : 0));
        }

        public static function 12W(_arg1:Boolean):void{
            GA.global().trackEvent("sound", ((_arg1) ? "soundOn" : "soundOff"));
            Parameters.data_.playSFX = _arg1;
            Parameters.save();
            0ZC.1NS();
        }

        public static function 00G(_arg1:Number):void{
            Parameters.data_.SFXVolume = _arg1;
            Parameters.save();
            0ZC.0kN(_arg1);
        }


    }
}//package __ZS


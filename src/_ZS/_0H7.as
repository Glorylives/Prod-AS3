// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS.0H7

package _ZS{
    import flash.media.Sound;
    import flash.media.SoundTransform;
    import flash.media.SoundChannel;
    import _04_._1JZ;
    import _qG._0bJ;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.net.URLRequest;
    import com.company.googleanalytics.GA;

    public class _0H7 {

        private static var _1cD:Sound = null;
        private static var Mr:SoundTransform;
        private static var _1DP:SoundChannel = null;
        private static var volume:Number = 0.3;


        public static function load():void{
            var _local1:_0bJ = _1JZ._0JF().getInstance(_0bJ);
            var _local2 = (_local1._1HF(true) + "/music/sorc.mp3");
            volume = Parameters.data_.musicVolume;
            Mr = new SoundTransform(((Parameters.data_.playMusic) ? volume : 0));
            _1cD = new Sound();
            _1cD.load(new URLRequest(_local2));
            _1DP = _1cD.play(0, int.MAX_VALUE, Mr);
        }

        public static function rs(_arg1:Boolean):void{
            GA.global().trackEvent("sound", ((_arg1) ? "musicOn" : "musicOff"));
            Parameters.data_.playMusic = _arg1;
            Parameters.save();
            Mr.volume = ((Parameters.data_.playMusic) ? volume : 0);
            _1DP.soundTransform = Mr;
        }

        public static function _5W(_arg1:Number):void{
            Parameters.data_.musicVolume = _arg1;
            Parameters.save();
            if (!Parameters.data_.playMusic)
            {
                return;
            };
            if (Mr != null)
            {
                Mr.volume = _arg1;
            } else
            {
                Mr = new SoundTransform(_arg1);
            };
            _1DP.soundTransform = Mr;
        }


    }
}//package __ZS


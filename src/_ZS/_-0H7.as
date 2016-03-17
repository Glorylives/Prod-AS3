// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//__ZS.0H7

package __ZS{
    import flash.media.Sound;
    import flash.media.SoundTransform;
    import flash.media.SoundChannel;
    import _04_._1JZ;
    import qG.0bJ;
    import com.company.assembleegameclient.parameters.Parameters;
    import flash.net.URLRequest;
    import com.company.googleanalytics.GA;

    public class 0H7 {

        private static var 1cD:Sound = null;
        private static var Mr:SoundTransform;
        private static var 1DP:SoundChannel = null;
        private static var volume:Number = 0.3;


        public static function load():void{
            var _local1:0bJ = _1JZ.0JF().getInstance(0bJ);
            var _local2 = (_local1.1HF(true) + "/music/sorc.mp3");
            volume = Parameters.data_.musicVolume;
            Mr = new SoundTransform(((Parameters.data_.playMusic) ? volume : 0));
            1cD = new Sound();
            1cD.load(new URLRequest(_local2));
            1DP = 1cD.play(0, int.MAX_VALUE, Mr);
        }

        public static function rs(_arg1:Boolean):void{
            GA.global().trackEvent("sound", ((_arg1) ? "musicOn" : "musicOff"));
            Parameters.data_.playMusic = _arg1;
            Parameters.save();
            Mr.volume = ((Parameters.data_.playMusic) ? volume : 0);
            1DP.soundTransform = Mr;
        }

        public static function 5W(_arg1:Number):void{
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
            1DP.soundTransform = Mr;
        }


    }
}//package __ZS


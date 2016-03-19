// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//Av.1-N

package Av{
    import 1uF.1Mf;
    import flash.net.navigateToURL;
    import flash.net.URLRequest;
    import flash.external.ExternalInterface;

    public class 1-N extends 1Mf {

        private static const nS:String = "rotmg.KabamDotComLib.getKabamGamePage";
        private static const Eb:String = "https://www.kabam.com";
        private static const TOP:String = "_top";

        [Inject]
        public var view:TV;


        override public function initialize():void{
            this.view.close.addOnce(this.D2);
        }

        private function D2():void{
            navigateToURL(new URLRequest(this.9J()), TOP);
        }

        private function 9J():String{
            var _local2:String;
            var _local1:String = Eb;
            try
            {
                _local2 = ExternalInterface.call(nS);
                if (((_local2) && (_local2.length)))
                {
                    _local1 = _local2;
                }
            } catch(error:Error)
            {
            }
            return (_local1);
        }


    }
}//package Av


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//06v.FA

package 06v{
    import flash.display.DisplayObjectContainer;
    import flash.system.Capabilities;
    import flash.display.LoaderInfo;
    import 0Zf.*;

    public class FA {

        private static var platform:1ja;

        private const 0wE:String = "Desktop";

        [Inject]
        public var root:DisplayObjectContainer;


        public function yb():Boolean{
            return (!((Capabilities.playerType == this.0wE)));
        }

        public function LD():Boolean{
            return ((Capabilities.playerType == this.0wE));
        }

        public function 1Uq():1ja{
            return ((platform = ((platform) || (this.0wn()))));
        }

        private function 0wn():1ja{
            var _local1:Object = LoaderInfo(this.root.stage.root.loaderInfo).parameters;
            if (this.05x(_local1))
            {
                return (1ja.22x);
            }
            if (this.e-(_local1))
            {
                return (1ja.0Nn);
            }
            if (this.22L(_local1))
            {
                return (1ja.BQ);
            }
            return (1ja.0jY);
        }

        private function 05x(_arg1:Object):Boolean{
            return (!((_arg1.kongregate_api_path == null)));
        }

        private function e-(_arg1:Object):Boolean{
            return (!((_arg1.steam_api_path == null)));
        }

        private function 22L(_arg1:Object):Boolean{
            return (!((_arg1.kabam_signed_request == null)));
        }


    }
}//package 06v


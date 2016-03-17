// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//static.0zA

package static{
    import 1uF.1Mf;
    import com.company.assembleegameclient.game.GameSprite;
    import xk.f8;
    import 0UV.1ML;
    import 1zG.1wd;
    import com.company.assembleegameclient.objects.Player;
    import flash.utils.Dictionary;

    public class 0zA extends 1Mf {

        [Inject]
        public var view:GameSprite;
        [Inject]
        public var 07y:f8;
        [Inject]
        public var 1LN:1ML;


        override public function initialize():void{
            this.07y.add(this.04g);
        }

        override public function destroy():void{
            this.07y.remove(this.04g);
        }

        private function 04g(_arg1:1wd):void{
            this.09y();
            this.0nr(_arg1);
            this.1LN.dispatch(false);
        }

        private function 09y():void{
            var _local1:Player = this.view.map.player_;
            ((_local1) && (this.view.map.removeObj(_local1.objectId_)));
            this.view.map.player_ = null;
        }

        private function 0nr(_arg1:1wd):void{
            var _local2:Dictionary = this.view.map.goDict_;
            ((_local2) && (this.view.setFocus(_local2[_arg1.0Mg])));
        }


    }
}//package static


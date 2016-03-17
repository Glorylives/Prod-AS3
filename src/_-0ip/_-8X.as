// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ip.8X

package 0ip{
    import 1uF.1Mf;
    import 0iw.0Cl;
    import com.company.assembleegameclient.game.GameSprite;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Dictionary;

    public class 8X extends 1Mf {

        [Inject]
        public var 0xg:0Cl;
        [Inject]
        public var view:GameSprite;


        override public function initialize():void{
            this.0xg.add(this.07N);
        }

        override public function destroy():void{
            this.0xg.remove(this.07N);
        }

        private function 07N(_arg1:String=""):void{
            this.view.setFocus(this.1xH(_arg1));
        }

        private function 1xH(_arg1:String):GameObject{
            var _local3:GameObject;
            if (_arg1 == "")
            {
                return (this.view.map.player_);
            };
            var _local2:Dictionary = this.view.map.goDict_;
            for each (_local3 in _local2)
            {
                if (_local3.name_ == _arg1)
                {
                    return (_local3);
                };
            };
            return (this.view.map.player_);
        }


    }
}//package 0ip


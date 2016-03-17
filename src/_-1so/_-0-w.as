// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1so.0-w

package 1so{
    import 0qj.1kb;
    import flash.events.MouseEvent;
    import com.company.assembleegameclient.objects.Player;
    import 099.1Bn;
    import 099.Menu;
    import com.company.assembleegameclient.objects.GameObject;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0-w extends 0yC {

        public function 0-w(){
            super(0xFFFFFF, 4179794, false);
        }

        override protected function onMouseOver(_arg1:MouseEvent):void{
            super.onMouseOver(_arg1);
            hZ(new 1kb(this.1Cf(), false));
        }

        override protected function onMouseOut(_arg1:MouseEvent):void{
            super.onMouseOut(_arg1);
            hZ(null);
        }

        override protected function onMouseDown(_arg1:MouseEvent):void{
            super.onMouseDown(_arg1);
            K2();
            YK(this.0Bc());
        }

        protected function 0Bc():Menu{
            var _local1:Player = (go_ as Player);
            if ((((_local1 == null)) || ((_local1.map_ == null))))
            {
                return (null);
            };
            var _local2:Player = _local1.map_.player_;
            if (_local2 == null)
            {
                return (null);
            };
            return (new 1Bn(_local1.map_, this.1Cf()));
        }

        private function 1Cf():Vector.<Player>{
            var _local2:GameObject;
            var _local1:Vector.<Player> = new <Player>[(go_ as Player)];
            for each (_local2 in 0Tt)
            {
                _local1.push((_local2 as Player));
            };
            return (_local1);
        }


    }
}//package 1so


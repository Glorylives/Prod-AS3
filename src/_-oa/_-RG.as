// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//oa.RG

package oa{
    import 0xo.lZ;
    import 0iw.0Cl;
    import 2b.1gX;
    import 2b.0uL;
    import 2b.xS;
    import 1ay.0SL;
    import 0UV.1P9;
    import JV.1OM;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.utils.Dictionary;
    import 23O.CH;
    import 0xo.0Fn;
    import com.company.assembleegameclient.objects.Player;
    import rz.*;

    public class RG implements 03V {

        [Inject]
        public var view:1a4;
        [Inject]
        public var model:lZ;
        [Inject]
        public var setFocus:0Cl;
        [Inject]
        public var iL:1gX;
        [Inject]
        public var Xw:0uL;
        [Inject]
        public var 0kf:xS;
        [Inject]
        public var II:0SL;
        [Inject]
        public var 0n:1P9;
        [Inject]
        public var W2:1OM;


        public function initialize():void{
            this.view.setMap(this.model.ja.map);
            this.setFocus.add(this.1GA);
            this.II.add(this.0G0);
            this.Xw.add(this.09u);
            this.iL.add(this.0z3);
            this.0kf.add(this.0T9);
            this.0n.add(this.gf);
            this.view.1Lx = this.W2.top;
        }

        private function gf():void{
            this.view.deactivate();
        }

        public function destroy():void{
            this.setFocus.remove(this.1GA);
            this.II.remove(this.0G0);
            this.Xw.remove(this.09u);
            this.iL.remove(this.0z3);
            this.0kf.remove(this.0T9);
            this.0n.remove(this.gf);
        }

        private function 1GA(_arg1:String):void{
            var _local2:GameObject = this.1xH(_arg1);
            this.view.setFocus(_local2);
        }

        private function 1xH(_arg1:String):GameObject{
            var _local3:GameObject;
            if (_arg1 == "")
            {
                return (this.view.map.player_);
            }
            var _local2:Dictionary = this.view.map.goDict_;
            for each (_local3 in _local2)
            {
                if (_local3.name_ == _arg1)
                {
                    return (_local3);
                }
            }
            return (this.view.map.player_);
        }

        private function 0z3(_arg1:CH):void{
            this.view.setGroundTile(_arg1.11d, _arg1.0GX, _arg1.1Rj);
        }

        private function 09u(_arg1:0Fn):void{
            this.view.setGameObjectTile(_arg1.11d, _arg1.0GX, _arg1.15h);
        }

        private function 0T9(_arg1:String):void{
            if (_arg1 == xS.IN)
            {
                this.view.zoomIn();
            } else
            {
                if (_arg1 == xS.OUT)
                {
                    this.view.zoomOut();
                }
            }
        }

        private function 0G0(_arg1:Player):void{
            this.view.draw();
        }


    }
}//package oa


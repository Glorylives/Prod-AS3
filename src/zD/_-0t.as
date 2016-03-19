// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//zD.0t

package zD{
    import 1uF.1Mf;
    import 0xo.lZ;
    import 1ay.0SL;
    import gx.1z1;
    import 0UV.11G;
    import 5z.0TC;
    import 0xo.25Q;
    import com.company.assembleegameclient.objects.Player;
    import 0DE.14l;
    import com.company.assembleegameclient.util.Yj;
    import com.company.assembleegameclient.map.Map;
    import 0Z-.0YK;
    import com.company.assembleegameclient.parameters.Parameters;
    import 1r4.1T2;
    import 0Px.0J9;
    import flash.display.DisplayObject;
    import gx.8Q;

    public class 0t extends 1Mf {

        [Inject]
        public var view:1Zk;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var II:0SL;
        [Inject]
        public var 12J:1z1;
        [Inject]
        public var Zc:11G;
        [Inject]
        public var 1UK:0TC;
        private var 01U:Boolean = false;


        override public function initialize():void{
            this.II.addOnce(this.1PF);
            this.view.1mM.add(this.1e5);
            this.view.tx.add(this.1fU);
            this.II.add(this.update);
        }

        override public function destroy():void{
            this.view.1mM.remove(this.1e5);
            this.view.tx.remove(this.1fU);
            this.II.remove(this.update);
        }

        private function 1PF(_arg1:Player):void{
            var _local2:25Q = this.12J.1rW[this.view.position];
            var _local3:int = _arg1.getPotionCount(_local2.objectId);
            this.view.Va(_local3, _local2.18j(_local3), _local2.available, _local2.objectId);
        }

        private function update(_arg1:Player):void{
            var _local2:25Q;
            var _local3:int;
            if ((((((this.view.objectType == 1z1.0Rl)) || ((this.view.objectType == 1z1.Ww)))) && (!(this.01U))))
            {
                _local2 = this.12J.08L(this.view.objectType);
                _local3 = _arg1.getPotionCount(_local2.objectId);
                this.view.Va(_local3, _local2.18j(_local3), _local2.available);
            }
        }

        private function 1e5(_arg1:DisplayObject):void{
            var _local4:14l;
            var _local2:Player = this.11u.ja.map.player_;
            var _local3:* = Yj.0j4(_arg1, 14l, Map, 0YK);
            if ((((_local3 is Map)) || (((Parameters.TP()) && ((_local3 == null))))))
            {
                1T2.1hP.invDrop(_local2, 1z1.gp(this.view.objectType), this.view.objectType);
            } else
            {
                if ((_local3 is 14l))
                {
                    _local4 = (_local3 as 14l);
                    if ((((_local4.mh() == 0J9.1Qx)) && (!((_local4.0ZD.owner == _local2)))))
                    {
                        1T2.1hP.invSwapPotion(_local2, _local2, 1z1.gp(this.view.objectType), this.view.objectType, _local4.0ZD.owner, _local4.1eu, 0J9.1Qx);
                    }
                }
            }
        }

        private function 1fU():void{
            var _local2:8Q;
            var _local1:25Q = this.12J.1rW[this.view.position];
            if (_local1.available)
            {
                _local2 = new 8Q(_local1.objectId, 8Q.L0);
                this.Zc.dispatch(_local2);
            }
        }


    }
}//package zD


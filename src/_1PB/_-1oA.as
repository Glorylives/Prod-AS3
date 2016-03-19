// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1oA

package 1PB{
    import 1uF.1Mf;
    import _1aA.CharacterSelectionAndNewsScreen;
    import WZ.0Te;
    import tn.0ec;
    import 1Bg.fQ;
    import 1Bg.1zl;
    import 0UV.Xq;
    import 1ay.1-0;
    import 1ay.tG;
    import 1Bg.0EO;
    import dq.fB;
    import dq.1er;
    import dq.0A8;
    import 1Bt.l-;
    import 1fx.1Zh;
    import com.company.util.YB;
    import com.company.assembleegameclient.parameters.Parameters;
    import _1aA.20c;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import tn.0dE;
    import gx.1KE;

    public class 1oA extends 1Mf {

        [Inject]
        public var view:CharacterSelectionAndNewsScreen;
        [Inject]
        public var SP:0Te;
        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var 21r:1zl;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var chooseName:1-0;
        [Inject]
        public var 057:tG;
        [Inject]
        public var get :0EO;
        [Inject]
        public var 0RR:fB;
        [Inject]
        public var 0cX:1er;
        [Inject]
        public var 0vM:0A8;
        [Inject]
        public var y7:l-;


        override public function initialize():void{
            this.16m();
            this.view.initialize(this.SP);
            this.view.close.add(this.D2);
            this.view.newCharacter.add(this.k0);
            this.view.k5.add(this.k0);
            this.view.chooseName.add(this.pE);
            this.view.7V.add(this.1jG);
            this.get .dispatch("/currentCharScreen");
            this.057.add(this.0N);
            this.0cX.add(this.E1);
            this.0vM.add(this.Y1);
            this.0RR.dispatch();
        }

        private function Y1():void{
            this.view.xm();
        }

        private function E1():void{
            this.view.FI();
        }

        override public function destroy():void{
            this.057.remove(this.0N);
            this.0cX.remove(this.E1);
            this.view.close.remove(this.D2);
            this.view.newCharacter.remove(this.k0);
            this.view.chooseName.remove(this.pE);
            this.view.k5.remove(this.k0);
            this.view.7V.remove(this.1jG);
        }

        private function 0N(_arg1:String):void{
            this.view.setName(_arg1);
        }

        private function 16m():void{
            var _local2:1Zh;
            var _local1:String = YB.D8();
            if (Parameters.data_.lastDailyAnalytics != _local1)
            {
                _local2 = new 1Zh();
                _local2.category = "joinDate";
                _local2.1D9 = Parameters.data_.joinDate;
                this.Ud.dispatch(_local2);
                Parameters.data_.lastDailyAnalytics = _local1;
                Parameters.save();
            }
        }

        private function k0():void{
            this.21r.dispatch(new 20c());
        }

        private function D2():void{
            this.21r.dispatch(new TitleView());
        }

        private function pE():void{
            this.chooseName.dispatch();
        }

        private function 1jG():void{
            var _local1:SavedCharacter = this.SP.1y9(0);
            this.SP.1IA = _local1.charId();
            var _local2:0dE = this.1z8.7k(_local1.objectType());
            _local2.eR(true);
            _local2.0sP.15c(_local1.skinType()).eR(true);
            var _local3:1Zh = new 1Zh();
            _local3.category = "character";
            _local3.1D9 = "select";
            _local3.label = _local1.0ki();
            _local3.value = _local1.level();
            this.Ud.dispatch(_local3);
            var _local4:1KE = new 1KE();
            _local4.19j = false;
            _local4.charId = _local1.charId();
            _local4.0iT = true;
            this.7V.dispatch(_local4);
        }


    }
}//package 1PB


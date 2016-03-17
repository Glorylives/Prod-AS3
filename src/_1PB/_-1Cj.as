// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.1Cj

package 1PB{
    import 1uF.1Mf;
    import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;
    import 1Bg.fQ;
    import 0UV.Xq;
    import 0OB.Ze;
    import tn.0ec;
    import 1qg.0io;
    import 1Bg.1hy;
    import 1Bg.of;
    import flash.display.Sprite;
    import tn.0dE;
    import com.company.assembleegameclient.appengine.SavedCharacter;
    import 1fx.1Zh;
    import gx.1KE;
    import 0Kf.ConfirmDeleteCharacterDialog;

    public class 1Cj extends 1Mf {

        [Inject]
        public var view:CurrentCharacterRect;
        [Inject]
        public var Ud:fQ;
        [Inject]
        public var 7V:Xq;
        [Inject]
        public var model:Ze;
        [Inject]
        public var 1z8:0ec;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var X4:1hy;
        [Inject]
        public var up:of;


        override public function initialize():void{
            this.view.selected.add(this.14J);
            this.view.deleteCharacter.add(this.061);
            this.view.showToolTip.add(this.oJ);
            this.view.hideTooltip.add(this.08A);
        }

        private function oJ(_arg1:Sprite):void{
            this.X4.dispatch(_arg1);
        }

        private function 08A():void{
            this.up.dispatch();
        }

        override public function destroy():void{
            this.view.hideTooltip.remove(this.08A);
            this.view.showToolTip.remove(this.oJ);
            this.view.selected.remove(this.14J);
            this.view.deleteCharacter.remove(this.061);
        }

        private function 14J(_arg1:SavedCharacter):void{
            var _local2:0dE = this.1z8.7k(_arg1.objectType());
            _local2.eR(true);
            _local2.0sP.15c(_arg1.skinType()).eR(true);
            this.Ib(_arg1);
            this.0Zm(_arg1);
        }

        private function Ib(_arg1:SavedCharacter):void{
            var _local2:1Zh = new 1Zh();
            _local2.category = "character";
            _local2.1D9 = "select";
            _local2.label = _arg1.0ki();
            _local2.value = _arg1.level();
            this.Ud.dispatch(_local2);
        }

        private function 0Zm(_arg1:SavedCharacter):void{
            var _local2:1KE = new 1KE();
            _local2.19j = false;
            _local2.charId = _arg1.charId();
            _local2.0iT = true;
            this.7V.dispatch(_local2);
        }

        private function 061(_arg1:SavedCharacter):void{
            this.model.select(_arg1);
            this.0n2.dispatch(new ConfirmDeleteCharacterDialog());
        }


    }
}//package 1PB


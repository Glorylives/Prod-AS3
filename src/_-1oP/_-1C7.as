// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1oP.1C7

package 1oP{
    import 1uF.1Mf;
    import tn.0ec;
    import IN.179;
    import IN.uP;
    import tn.1iY;

    public class 1C7 extends 1Mf {

        [Inject]
        public var view:CharacterSkinListItem;
        [Inject]
        public var model:0ec;
        [Inject]
        public var CB:179;
        [Inject]
        public var jW:uP;


        override public function initialize():void{
            this.view.buy.add(this.qP);
            this.view.01f.add(this.1eJ);
            this.view.out.add(this.mf);
            this.view.selected.add(this.14J);
        }

        override public function destroy():void{
            this.view.buy.remove(this.qP);
            this.view.01f.remove(this.1eJ);
            this.view.out.remove(this.mf);
            this.view.selected.remove(this.14J);
            this.view.0oJ(null);
        }

        private function 1eJ():void{
            this.jW.dispatch(this.view.Bb());
        }

        private function mf():void{
            this.jW.dispatch(null);
        }

        private function qP():void{
            var _local1:1iY = this.view.Bb();
            this.CB.dispatch(_local1);
        }

        private function 14J(_arg1:Boolean):void{
            this.view.Bb().eR(_arg1);
        }


    }
}//package 1oP


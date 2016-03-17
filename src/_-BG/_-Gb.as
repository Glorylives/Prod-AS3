// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//BG.Gb

package BG{
    import 1uF.1Mf;
    import WZ.0Te;
    import 0eZ.5l;

    public class Gb extends 1Mf {

        [Inject]
        public var view:02I;
        [Inject]
        public var model:0Te;
        [Inject]
        public var 1yT:5l;


        override public function initialize():void{
            this.model.J8.add(this.1Aj);
            this.model.1l6.add(this.1K6);
            this.model.0XD.add(this.DM);
            this.view.kn.add(this.U2);
        }

        override public function destroy():void{
            this.model.J8.remove(this.1Aj);
            this.model.1l6.remove(this.1K6);
            this.view.kn.remove(this.U2);
        }

        private function 1Aj(_arg1:int):void{
            this.view.draw(_arg1, this.model.15g());
        }

        private function 1K6(_arg1:int):void{
            this.view.draw(this.model.0ce(), _arg1);
        }

        private function DM(_arg1:int):void{
            this.view.draw(this.model.0ce(), this.model.15g(), _arg1);
        }

        private function U2():void{
            this.1yT.dispatch();
        }


    }
}//package BG


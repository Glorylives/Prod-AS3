// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//eC.0pF

package eC{
    import 1uF.1Mf;
    import flash.events.MouseEvent;

    public class 0pF extends 1Mf {

        [Inject]
        public var view:0F0;


        override public function initialize():void{
            this.view.C7.add(this.onMouseOut);
            this.view.mJ.add(this.onMouseOver);
        }

        override public function destroy():void{
            this.view.C7.remove(this.onMouseOut);
            this.view.mJ.remove(this.onMouseOver);
            this.view.1Di();
        }

        private function onMouseOver(_arg1:MouseEvent):void{
            this.view.13Y();
        }

        private function onMouseOut(_arg1:MouseEvent):void{
            this.view.1Di();
        }


    }
}//package eC


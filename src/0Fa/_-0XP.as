// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Fa.0XP

package 0Fa{
    import 1uF.1Mf;
    import 1u-.tM;
    import 0eZ.2-y;
    import 0xo.lZ;
    import 1ay.1UQ;
    import flash.events.MouseEvent;

    public class 0XP extends 1Mf {

        [Inject]
        public var view:0Ka;
        [Inject]
        public var model:tM;
        [Inject]
        public var 0Pa:2-y;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var We:1UQ;


        override public function initialize():void{
            this.view.setup(this.model);
            this.We.add(this.0Of);
        }

        private function 0Of():void{
            if (((this.11u.ja) && (this.11u.ja.evalIsNotInCombatMapArea())))
            {
                this.view.addEventListener(MouseEvent.CLICK, this.0eJ);
            } else
            {
                this.view.mouseEnabled = false;
                this.view.mouseChildren = false;
            };
        }

        override public function destroy():void{
            this.view.removeEventListener(MouseEvent.CLICK, this.0eJ);
        }

        private function 0eJ(_arg1:MouseEvent):void{
            this.0Pa.dispatch();
        }


    }
}//package 0Fa


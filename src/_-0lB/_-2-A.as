// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0lB.2-A

package 0lB{
    import 1uF.1Mf;
    import 0hd.CreateGuildFrame;
    import 1qg.11S;

    public class 2-A extends 1Mf {

        [Inject]
        public var view:CreateGuildFrame;
        [Inject]
        public var KW:11S;


        override public function initialize():void{
            this.view.close.add(this.D2);
        }

        override public function destroy():void{
            this.view.close.remove(this.D2);
        }

        private function D2():void{
            this.KW.dispatch();
        }


    }
}//package 0lB


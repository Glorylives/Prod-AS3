// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1mO.ao

package 1mO{
    import 1uF.1Mf;
    import 1wn.1t;
    import 0sk.26Z;
    import 1UP.l5;
    import __AS3__.vec.Vector;
    import 0sk.BZ;

    public class ao extends 1Mf {

        public static var 0lN:Boolean = true;

        [Inject]
        public var update:1t;
        [Inject]
        public var model:26Z;
        [Inject]
        public var 1GV:l5;


        override public function initialize():void{
            this.update.add(this.Q1);
            this.1GV.start();
            if (0lN)
            {
                0lN = false;
                this.model.0Ej();
            }
        }

        override public function destroy():void{
            this.update.remove(this.Q1);
        }

        private function Q1(_arg1:Vector.<BZ>):void{
            this.model.0Ej();
        }


    }
}//package 1mO


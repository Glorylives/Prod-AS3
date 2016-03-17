// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1u-.tM

package 1u-{
    import flash.geom.Rectangle;
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class tM {

        public var 1Xo:Rectangle;
        public var 1jC:int;
        public var 1Se:int;
        public var Kv:int;
        public var 2-N:Vector.<1Ys>;

        public function tM(){
            this.2-N = new Vector.<1Ys>();
            super();
            this.1Xo = new Rectangle(0, 0, 600, 300);
            this.1jC = 20;
            this.1Se = 10;
            this.Kv = 150;
        }

        public function 0Bn(_arg1:1Ys):void{
            this.2-N.push(_arg1);
            if (this.2-N.length > this.Kv)
            {
                this.2-N.shift();
            };
        }


    }
}//package 1u-


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5I.n2

package 5I{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class n2 {

        private var YS:Vector.<0Ao>;
        private var 1LY:int = 0;

        public function n2(){
            this.YS = new Vector.<0Ao>();
            super();
        }

        public function 0Jo(_arg1:0Ao):void{
            this.YS.length = this.1LY;
            _arg1.execute();
            this.YS.push(_arg1);
            this.1LY++;
        }

        public function 07b():void{
            if (this.1LY == 0)
            {
                return;
            }
            this.YS[--this.1LY].unexecute();
        }

        public function 150():void{
            if (this.1LY == this.YS.length)
            {
                return;
            }
            this.YS[this.1LY++].execute();
        }

        public function clear():void{
            this.1LY = 0;
            this.YS.length = 0;
        }


    }
}//package 5I


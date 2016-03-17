// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.Qr

package 0QW{
    import 5I.Command;

    public class Qr extends Command {

        private var map_:1c1;
        private var x_:int;
        private var y_:int;
        private var 07X:int;
        private var 1an:int;
        private var 0JI:int;

        public function Qr(_arg1:1c1, _arg2:int, _arg3:int, _arg4:int, _arg5:int, _arg6:int){
            this.map_ = _arg1;
            this.x_ = _arg2;
            this.y_ = _arg3;
            this.07X = _arg4;
            this.1an = _arg5;
            this.0JI = _arg6;
        }

        override public function execute():void{
            this.map_.0j0(this.x_, this.y_, this.07X, this.0JI);
        }

        override public function unexecute():void{
            this.map_.0j0(this.x_, this.y_, this.07X, this.1an);
        }


    }
}//package 0QW


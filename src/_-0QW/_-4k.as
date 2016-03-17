// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.4k

package 0QW{
    import 5I.Command;

    public class 4k extends Command {

        private var map_:1c1;
        private var x_:int;
        private var y_:int;
        private var 1n9:String;
        private var 1PU:String;

        public function 4k(_arg1:1c1, _arg2:int, _arg3:int, _arg4:String, _arg5:String){
            this.map_ = _arg1;
            this.x_ = _arg2;
            this.y_ = _arg3;
            this.1n9 = _arg4;
            this.1PU = _arg5;
        }

        override public function execute():void{
            this.map_.7N(this.x_, this.y_, this.1PU);
        }

        override public function unexecute():void{
            this.map_.7N(this.x_, this.y_, this.1n9);
        }


    }
}//package 0QW


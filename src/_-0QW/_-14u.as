// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.14u

package 0QW{
    import 5I.Command;

    public class 14u extends Command {

        private var map_:1c1;
        private var x_:int;
        private var y_:int;
        private var 1fG:172;

        public function 14u(_arg1:1c1, _arg2:int, _arg3:int, _arg4:172){
            this.map_ = _arg1;
            this.x_ = _arg2;
            this.y_ = _arg3;
            this.1fG = _arg4.clone();
        }

        override public function execute():void{
            this.map_.0lr(this.x_, this.y_);
        }

        override public function unexecute():void{
            this.map_.0r7(this.x_, this.y_, this.1fG);
        }


    }
}//package 0QW


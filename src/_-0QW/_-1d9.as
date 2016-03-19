// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0QW.1d9

package 0QW{
    import 5I.Command;

    public class 1d9 extends Command {

        private var map_:1c1;
        private var x_:int;
        private var y_:int;
        private var 1fG:172;
        private var Sf:172;

        public function 1d9(_arg1:1c1, _arg2:int, _arg3:int, _arg4:172, _arg5:172){
            this.map_ = _arg1;
            this.x_ = _arg2;
            this.y_ = _arg3;
            if (_arg4 != null)
            {
                this.1fG = _arg4.clone();
            }
            if (_arg5 != null)
            {
                this.Sf = _arg5.clone();
            }
        }

        override public function execute():void{
            if (this.Sf == null)
            {
                this.map_.0lr(this.x_, this.y_);
            } else
            {
                this.map_.0r7(this.x_, this.y_, this.Sf);
            }
        }

        override public function unexecute():void{
            if (this.1fG == null)
            {
                this.map_.0lr(this.x_, this.y_);
            } else
            {
                this.map_.0r7(this.x_, this.y_, this.1fG);
            }
        }


    }
}//package 0QW


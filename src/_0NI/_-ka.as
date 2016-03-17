// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0NI.ka

package 0NI{
    import 0Fr.0d8;
    import flash.utils.getTimer;
    import 0Fr.*;

    public class ka implements 1da {

        private var 1Z9:Object;
        private var 1kW:0d8;

        public function ka(_arg1:Object, _arg2:0d8){
            this.1Z9 = _arg1;
            this.1kW = _arg2;
        }

        public function debug(_arg1, _arg2:Array=null):void{
            this.1kW.log(this.1Z9, 32, getTimer(), _arg1, _arg2);
        }

        public function info(_arg1, _arg2:Array=null):void{
            this.1kW.log(this.1Z9, 16, getTimer(), _arg1, _arg2);
        }

        public function 0K(_arg1, _arg2:Array=null):void{
            this.1kW.log(this.1Z9, 8, getTimer(), _arg1, _arg2);
        }

        public function error(_arg1, _arg2:Array=null):void{
            this.1kW.log(this.1Z9, 4, getTimer(), _arg1, _arg2);
        }

        public function 0bx(_arg1, _arg2:Array=null):void{
            this.1kW.log(this.1Z9, 2, getTimer(), _arg1, _arg2);
        }


    }
}//package 0NI


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5I.0Ao

package 5I{
    import __AS3__.vec.Vector;
    import __AS3__.vec.*;

    public class 0Ao {

        private var YS:Vector.<Command>;

        public function 0Ao(){
            this.YS = new Vector.<Command>();
            super();
        }

        public function 1Qj():Boolean{
            return ((this.YS.length == 0));
        }

        public function 0tz(_arg1:Command):void{
            this.YS.push(_arg1);
        }

        public function execute():void{
            var _local1:Command;
            for each (_local1 in this.YS)
            {
                _local1.execute();
            }
        }

        public function unexecute():void{
            var _local1:Command;
            for each (_local1 in this.YS)
            {
                _local1.unexecute();
            }
        }


    }
}//package 5I


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//5n.1aE

package 5n{
    import go.0By;

    public class 1aE implements 1IC {

        [Inject]
        public var 1XE:0By;
        private var aM:Object;

        public function 1aE(){
            this.aM = {};
        }

        public function 0I(_arg1:String, _arg2:int):void{
            var _local3:em = (this.aM[_arg1] = ((this.aM[_arg1]) || (new em(_arg1))));
            _local3.Q3(_arg2);
            this.1XE.dispatch(_local3);
        }


    }
}//package 5n


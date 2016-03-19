// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0YY.1q7

package 0YY{
    import go.1ga;
    import 1HH.0xD;

    public class 1q7 {

        [Inject]
        public var register:1ga;
        [Inject]
        public var 0Fm:10E;


        public function execute():void{
            var _local1:0xD;
            _local1 = new 0xD();
            _local1.name = "caretaker";
            _local1.description = "opens the pets caretaker query UI";
            this.register.dispatch(_local1, this.0Fm);
        }


    }
}//package 0YY


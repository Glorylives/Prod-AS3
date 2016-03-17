// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0Mo.SK

package 0Mo{
    import go.1ga;
    import 1HH.0xD;

    public class SK {

        [Inject]
        public var register:1ga;
        [Inject]
        public var 13n:0Yg;


        public function execute():void{
            var _local1:0xD;
            _local1 = new 0xD();
            _local1.name = "reskin";
            _local1.description = "opens the reskin UI";
            this.register.dispatch(_local1, this.13n);
        }


    }
}//package 0Mo


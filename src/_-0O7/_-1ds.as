// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0O7.1ds

package 0O7{
    import go.1ga;
    import go.0AC;
    import go.Sr;
    import go.06U;
    import go.1YO;
    import 1HH.0xD;

    public class 1ds {

        [Inject]
        public var register:1ga;
        [Inject]
        public var sA:0AC;
        [Inject]
        public var 0jJ:Sr;
        [Inject]
        public var 0WK:06U;
        [Inject]
        public var 0UG:1YO;


        public function execute():void{
            var _local1:0xD;
            _local1 = new 0xD();
            _local1.name = "list";
            _local1.description = "lists available console commands";
            var _local2:0xD = new 0xD();
            _local2.name = "clear";
            _local2.description = "clears the console";
            var _local3:0xD = new 0xD();
            _local3.name = "exit";
            _local3.description = "closes the console";
            var _local4:0xD = new 0xD();
            _local4.name = "copy";
            _local4.description = "copies the contents _of the console to the clipboard";
            this.register.dispatch(_local1, this.sA);
            this.register.dispatch(_local2, this.0jJ);
            this.register.dispatch(_local3, this.0WK);
            this.register.dispatch(_local4, this.0UG);
        }


    }
}//package 0O7


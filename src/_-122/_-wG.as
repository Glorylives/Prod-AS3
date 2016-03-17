// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//122.wG

package 122{
    import go.1ga;
    import 1HH.0xD;

    public class wG {

        [Inject]
        public var vz:1ga;
        [Inject]
        public var so:Gs;


        public function execute():void{
            var _local1:0xD;
            _local1 = new 0xD();
            _local1.name = "setlang";
            _local1.description = "Sets the locale language (defaults to en-US)";
            this.vz.dispatch(_local1, this.so);
        }


    }
}//package 122


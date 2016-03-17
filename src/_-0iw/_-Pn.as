// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0iw.Pn

package 0iw{
    import go.1ga;
    import 1HH.0xD;

    public class Pn {

        [Inject]
        public var register:1ga;
        [Inject]
        public var setFocus:0Cl;


        public function execute():void{
            var _local1:0xD;
            _local1 = new 0xD();
            _local1.name = "follow";
            _local1.description = "follow a game object (by name)";
            this.register.dispatch(_local1, this.setFocus);
        }


    }
}//package 0iw


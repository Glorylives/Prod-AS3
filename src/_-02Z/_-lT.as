// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//02Z.lT

package 02Z{
    import 14V.0jk;
    import 1cI.3D;
    import 1ay.Am;
    import 1cI.0wV;
    import 1cI.06P;

    public class lT {

        [Inject]
        public var 0r-:0jk;
        [Inject]
        public var ES:3D;
        [Inject]
        public var refresh:Am;


        public function execute():void{
            var _local1:0wV = new 0wV(this.0r-);
            _local1.0zW(new 06P(this.refresh));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package 02Z


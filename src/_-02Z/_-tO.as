// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//02Z.tO

package 02Z{
    import 14V.27Q;
    import 1cI.3D;
    import 1ay.Am;
    import 1cI.0wV;
    import 1cI.06P;

    public class tO {

        [Inject]
        public var login:27Q;
        [Inject]
        public var ES:3D;
        [Inject]
        public var refresh:Am;


        public function execute():void{
            var _local1:0wV = new 0wV(this.login);
            _local1.0zW(new 06P(this.refresh));
            this.ES.add(_local1);
            _local1.start();
        }


    }
}//package 02Z


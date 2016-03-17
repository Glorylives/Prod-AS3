// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0zL.0Wt

package 0zL{
    import 1cI.3D;

    public class 0Wt {

        [Inject]
        public var startup:0Vu;
        [Inject]
        public var ES:3D;


        public function execute():void{
            this.ES.add(this.startup);
            this.startup.start();
        }


    }
}//package 0zL


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1PB.s2

package 1PB{
    import 1uF.1Mf;
    import 0QW.2-2;
    import WZ.0Te;
    import 0y3.0gx;

    public class s2 extends 1Mf {

        [Inject]
        public var view:2-2;
        [Inject]
        public var model:0Te;
        [Inject]
        public var servers:0gx;


        override public function initialize():void{
            this.view.initialize(this.model, this.servers.Zz());
        }


    }
}//package 1PB


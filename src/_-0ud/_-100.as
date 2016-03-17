// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0ud.100

package 0ud{
    import 1cI.1iz;
    import flash.display.LoaderInfo;
    import 1ki.0e0;
    import JV.1OM;
    import 1qg.0io;
    import 1qg.11S;
    import flash.system.Security;
    import flash.display.DisplayObject;
    import 14V.*;

    public class 100 extends 1iz implements uM {

        [Inject]
        public var info:LoaderInfo;
        [Inject]
        public var  each:0e0;
        [Inject]
        public var local:Z8;
        [Inject]
        public var W2:1OM;
        [Inject]
        public var 0n2:0io;
        [Inject]
        public var KW:11S;


        override protected function startTask():void{
            var _local1:String = this.info.parameters.kongregate_api_path;
            Security.allowDomain(_local1);
            this.W2. each.addChild((this. each as DisplayObject));
            this. each.53.addOnce(this.sP);
            this. each.load(_local1);
        }

        private function sP():void{
            1d5(true);
        }


    }
}//package 0ud


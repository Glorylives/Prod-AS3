// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//122.jv

package 122{
    import 1Bg.h8;
    import 1Bg.0oS;
    import 1qg.11S;
    import WZ.07B;
    import 1PB.TitleView;

    public class jv {

        [Inject]
        public var 0gc:h8;
        [Inject]
        public var 21r:0oS;
        [Inject]
        public var closeDialogs:11S;
        [Inject]
        public var 6H:07B;


        public function execute():void{
            var _local1:Class = ((this.6H.1oO()) || (TitleView));
            this.0gc.dispatch();
            this.closeDialogs.dispatch();
            this.21r.dispatch(new (_local1)());
        }


    }
}//package 122


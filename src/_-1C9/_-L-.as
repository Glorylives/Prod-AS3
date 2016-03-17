// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1C9.L-

package 1C9{
    import 1fx.wr;
    import 1fx.1Zh;

    public class L- {

        [Inject]
        public var analytics:wr;
        [Inject]
        public var vo:1Zh;


        public function execute():void{
            this.analytics.trackEvent(this.vo.category, this.vo.1D9, this.vo.label, this.vo.value);
        }


    }
}//package 1C9


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0N9.hN

package 0N9{
    import 0xo.lZ;
    import 0UV.0rh;
    import 1u-.1Ys;
    import com.company.assembleegameclient.parameters.Parameters;
    import AO.du;

    public class hN {

        [Inject]
        public var data:String;
        [Inject]
        public var 11u:lZ;
        [Inject]
        public var 12K:0rh;


        public function execute():void{
            if (this.data == "/help")
            {
                this.12K.dispatch(1Ys.make(Parameters.Iu, du.15i));
            } else
            {
                this.11u.ja.gsc_.playerText(this.data);
            };
        }


    }
}//package 0N9


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0kv.pq

package 0kv{
    import com.company.assembleegameclient.ui.1BB;
    import 1n4.1cA;
    import _CU.sb;
    import _CU._13j;

    public class pq extends 1BB {

        public function pq(_arg1:int, _arg2:String, _arg3:int=0){
            super(_arg3);
            OW(_arg1);
            text_.setStringBuilder(new 1cA().setParams(_arg2));
            initText();
        }

        override protected function makeText():_13j{
            return (new sb());
        }


    }
}//package 0kv


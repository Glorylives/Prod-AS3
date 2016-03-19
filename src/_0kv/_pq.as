// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//0kv._pq

package _0kv{
    import com.company.assembleegameclient.ui._1BB;
    import _1n4._1cA;
    import _CU.sb;
    import _CU._13j;

    public class _pq extends _1BB {

        public function _pq(_arg1:int, _arg2:String, _arg3:int=0){
            super(_arg3);
            OW(_arg1);
            text_.setStringBuilder(new _1cA().setParams(_arg2));
            initText();
        }

        override protected function makeText():_13j{
            return (new sb());
        }


    }
}//package 0kv


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.27I

package _gh{
    import flash.utils.Dictionary;

    public class _27I {

        private var _1ZV;
        private var _0Zr:Boolean;

        public function _27I(_arg1, _arg2:Boolean=false){
            this._0Zr = _arg2;
            this._0yJ = _arg1;
        }

        public function get _0yJ(){
            var _local1:*;
            if (this._0Zr)
            {
                return (this._1ZV);
            }
            for (_local1 in this._1ZV)
            {
                return (_local1);
            }
            return (null);
        }

        public function set _0yJ(_arg1):void{
            if (this._0Zr)
            {
                this._1ZV = _arg1;
            } else
            {
                this._1ZV = new Dictionary(true);
                this._1ZV[_arg1] = null;
            }
        }

        public function get strong():Boolean{
            return (this._0Zr);
        }


    }
}//package gh


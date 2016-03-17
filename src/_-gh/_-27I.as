// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//gh.27I

package gh{
    import flash.utils.Dictionary;

    public class 27I {

        private var 1ZV;
        private var 0Zr:Boolean;

        public function 27I(_arg1, _arg2:Boolean=false){
            this.0Zr = _arg2;
            this.0yJ = _arg1;
        }

        public function get 0yJ(){
            var _local1:*;
            if (this.0Zr)
            {
                return (this.1ZV);
            };
            for (_local1 in this.1ZV)
            {
                return (_local1);
            };
            return (null);
        }

        public function set 0yJ(_arg1):void{
            if (this.0Zr)
            {
                this.1ZV = _arg1;
            } else
            {
                this.1ZV = new Dictionary(true);
                this.1ZV[_arg1] = null;
            };
        }

        public function get strong():Boolean{
            return (this.0Zr);
        }


    }
}//package gh


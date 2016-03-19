// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//M0.1g

package M0{
    import vF.MysteryBoxInfo;

    public class 1g {

        private var 0OY:Object;
        private var initialized:Boolean = false;
        private var 07O:Boolean = false;


        public function 1bd():Object{
            return (this.0OY);
        }

        public function WS(_arg1:Array):void{
            var _local2:MysteryBoxInfo;
            this.0OY = {}
            for each (_local2 in _arg1)
            {
                this.0OY[_local2.id] = _local2;
            }
            this.initialized = true;
        }

        public function 171():Boolean{
            return (this.initialized);
        }

        public function 1Mp(_arg1:Boolean):void{
            this.initialized = _arg1;
        }

        public function get isNew():Boolean{
            return (this.07O);
        }

        public function set isNew(_arg1:Boolean):void{
            this.07O = _arg1;
        }


    }
}//package M0


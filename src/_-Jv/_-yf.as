// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//JV.yf

package JV{
    import flash.display.Sprite;

    public class yf extends Sprite {

        private var 0Av:Sprite;
        private var 1ob:Sprite;


        public function 21r(_arg1:Sprite):void{
            if (this.0Av == _arg1)
            {
                return;
            };
            this.XY();
            this.0Av = _arg1;
            addChild(_arg1);
        }

        private function XY():void{
            if (((this.0Av) && (contains(this.0Av))))
            {
                this.1ob = this.0Av;
                removeChild(this.0Av);
            };
        }

        public function 11b():Sprite{
            return (this.1ob);
        }


    }
}//package JV


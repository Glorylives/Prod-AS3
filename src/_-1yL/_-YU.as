// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1YL.YU

package 1YL{
    import flash.display.Sprite;

    public final class YU extends Sprite {

        public var output:1Z7;
        public var input:N8;

        public function YU(){
            addChild((this.output = new 1Z7()));
            addChild((this.input = new N8()));
        }

        override public function set visible(_arg1:Boolean):void{
            super.visible = _arg1;
            if (((_arg1) && (stage)))
            {
                stage.focus = this.input;
            }
        }


    }
}//package 1YL


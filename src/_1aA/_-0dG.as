// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1aA.0dG

package _1aA{
    import flash.display.Sprite;

    import com.company.assembleegameclient.appengine.1AQ;
    import WZ.0Te;


    public class 0dG extends Sprite {

        private var 0mg:Vector.<1zu>;
        private var 1bJ:Boolean = false;

        public function 0dG(_arg1:0Te){
            var _local2:1AQ;
            this.0mg = new Vector.<1zu>();
            super();
            for each (_local2 in _arg1.1GV())
            {
                if (_local2.1xI())
                {
                    this.1ZF(new 1zu(_local2.getIcon(), _local2.X, _local2.16u, _local2.0E0, _local2.0K7, _arg1.0YA()));
                    this.1bJ = true;
                }
            }
        }

        public function 2-8():Boolean{
            return (this.1bJ);
        }

        public function 1ZF(_arg1:1zu):void{
            _arg1.y = (4 + (this.0mg.length * (1zu.HEIGHT + 4)));
            this.0mg.push(_arg1);
            addChild(_arg1);
        }


    }
}//package _1aA


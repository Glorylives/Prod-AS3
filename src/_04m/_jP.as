// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//04m._jP

package _04m{
    import flash.display3D.textures.Texture;
    import flash.display.BitmapData;
    import flash.display3D.textures.TextureBase;

    public class _jP {

        private var texture:Texture;
        protected var width:int;
        protected var height:int;

        public function _jP(_arg1:Texture){
            this.texture = _arg1;
        }

        public function uploadFromBitmapData(_arg1:BitmapData):void{
            this.width = _arg1.width;
            this.height = _arg1.height;
            this.texture.uploadFromBitmapData(_arg1);
        }

        public function getTexture():TextureBase{
            return (this.texture);
        }

        public function Pj():int{
            return (this.width);
        }

        public function getHeight():int{
            return (this.height);
        }

        public function dispose():void{
            this.texture.dispose();
        }


    }
}//package 04m


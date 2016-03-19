// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.0LL

package 2--{
    import 1uF.1Mf;
    import 5z.zL;
    import 1qg.11S;
    import flash.display.Bitmap;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.util._V4;
    import com.company.assembleegameclient.util._BJ;
    import com.company.assembleegameclient.util.0s0;
    import com.company.assembleegameclient.util.TextureRedrawer;
    import flash.display.BitmapData;
    import 1yZ.1go;

    public class 0LL extends 1Mf {

        [Inject]
        public var view:24I;
        [Inject]
        public var 1G5:zL;
        [Inject]
        public var KW:11S;


        override public function initialize():void{
            var _local1:Bitmap = this.xj();
            this.view.init(_local1);
            this.view.closed.add(this.1qf);
        }

        private function 1qf():void{
            this.KW.dispatch();
        }

        private function xj():Bitmap{
            var _local1:String = ObjectLibrary.Uq(this.view.skinType);
            var _local2:XML = ObjectLibrary.0vY(_local1);
            var _local3:String = _local2.AnimatedTexture.File;
            var _local4:int = _local2.AnimatedTexture.Index;
            var _local5:_BJ = _V4.1Q2(_local3, _local4);
            var _local6:0s0 = _local5.imageFromAngle(0, _BJ.1OS, 0);
            var _local7:BitmapData = TextureRedrawer.resize(_local6.image_, _local6.mask_, 160, true, 0, 0);
            _local7 = 1go.0Lr(_local7, 0, 6);
            return (new Bitmap(_local7));
        }


    }
}//package 2--


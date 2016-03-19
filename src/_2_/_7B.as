// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2--.7B

package _2_
{
    import flash.display.Sprite;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;
    import flash.display.IGraphicsData;
    import com.company.util._tu;

    public class _7B extends Sprite {

        private var _0B9:GraphicsSolidFill;
        private var path_:GraphicsPath;

        public function _7B(_arg1:int, _arg2:Array){
            this._0B9 = new GraphicsSolidFill(0x545454);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[this._0B9, this.path_, _tu.END_FILL];
            _tu._0S(0, 0, _arg1, _arg1, (_arg1 / 12), _arg2, this.path_);
            graphics.drawGraphicsData(_local3);
        }

    }
}//package 2--


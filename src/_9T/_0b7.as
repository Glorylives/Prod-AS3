// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//9T.0b7

package _9T{
import _0xo._lZ;

import flash.display.Sprite;
    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import com.company.assembleegameclient.objects.GameObject;
    import flash.geom.Point;
    import flash.text.TextField;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsStroke;
    import flash.display.GraphicsPath;
    import flash.display.LineScaleMode;
    import flash.display.CapsStyle;
    import flash.display.JointStyle;
    import flash.text.TextFieldAutoSize;
    import flash.text.TextFormat;
    import flash.display.GraphicsPathCommand;
    import flash.filters.DropShadowFilter;
    import flash.events.MouseEvent;
    import _0xo._lZ;
    import com.company.assembleegameclient.objects.Player;
    import _04_._1JZ;
    import com.company.assembleegameclient.parameters.Parameters;
    import com.company.assembleegameclient.map._1C8;

    public class _0b7 extends Sprite implements _0CC {

        private const graphicsData_:Vector.<IGraphicsData> = new <flash.display.IGraphicsData>[_1F4, _0B9, path_, com.company.util._tu.END_FILL, com.company.util._tu._1l4];

        public var go_:GameObject;
        public var lifetime_:int;
        public var _08V:Boolean;
        public var _0aO:Point;
        public var text_:TextField;
        private var _0B9:GraphicsSolidFill;
        private var outlineFill_:GraphicsSolidFill;
        private var _1F4:GraphicsStroke;
        private var path_:GraphicsPath;
        private var _1vT:String;
        private var _17n:Boolean;
        private var _140:Boolean;
        private var startTime_:int = 0;

        public function _0b7(_arg1:GameObject, _arg2:String, _arg3:String, _arg4:Boolean, _arg5:Boolean, _arg6:uint, _arg7:Number, _arg8:uint, _arg9:Number, _arg10:uint, _arg11:int, _arg12:Boolean, _arg13:Boolean){
            this._0aO = new Point();
            this._0B9 = new GraphicsSolidFill(0, 1);
            this.outlineFill_ = new GraphicsSolidFill(0xFFFFFF, 1);
            this._1F4 = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this.outlineFill_);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            super();
            this.go_ = _arg1;
            this._1vT = _arg3;
            this._17n = _arg4;
            this._140 = _arg5;
            this.lifetime_ = (_arg11 * 1000);
            this._08V = _arg13;
            this.text_ = new TextField();
            this.text_.autoSize = TextFieldAutoSize.LEFT;
            this.text_.embedFonts = true;
            this.text_.width = 150;
            var _local14:TextFormat = new TextFormat();
            _local14.font = "Myriad Pro";
            _local14.size = 14;
            _local14.bold = _arg12;
            _local14.color = _arg10;
            this.text_.defaultTextFormat = _local14;
            this.text_.selectable = false;
            this.text_.mouseEnabled = false;
            this.text_.multiline = true;
            this.text_.wordWrap = true;
            this.text_.text = _arg2;
            addChild(this.text_);
            var _local15:int = (this.text_.textWidth + 4);
            this._0aO.x = (-(_local15) / 2);
            this._0B9.color = _arg6;
            this._0B9.alpha = _arg7;
            this.outlineFill_.color = _arg8;
            this.outlineFill_.alpha = _arg9;
            graphics.clear();
            _tu.ln(this.path_);
            _tu._0S(-6, -6, (_local15 + 12), (height + 12), 4, [1, 1, 1, 1], this.path_);
            this.path_.commands.splice(6, 0, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO, GraphicsPathCommand.LINE_TO);
            var _local16:int = height;
            this.path_.data.splice(12, 0, ((_local15 / 2) + 8), (_local16 + 6), (_local15 / 2), (_local16 + 18), ((_local15 / 2) - 8), (_local16 + 6));
            graphics.drawGraphicsData(this.graphicsData_);
            filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16)];
            this._0aO.y = ((-(height) - ((this.go_.texture_.height * (_arg1.size_ / 100)) * 5)) - 2);
            visible = false;
            addEventListener(MouseEvent.RIGHT_CLICK, this._0S);
        }

        private function _0S(_arg1:MouseEvent):void{
            var hmod:_lZ;
            var aPlayer:Player;
            var e:MouseEvent = _arg1;
            var playerObjectId:int = this.go_.objectId_;
            try
            {
                hmod = _1JZ._0JF().getInstance(_lZ);
                if (((((!((hmod.ja.map.goDict_[playerObjectId] == null))) && ((hmod.ja.map.goDict_[playerObjectId] is Player)))) && (!((hmod.ja.map.player_.objectId_ == playerObjectId)))))
                {
                    aPlayer = (hmod.ja.map.goDict_[playerObjectId] as Player);
                    hmod.ja.Fv(aPlayer, e.stageX, e.stageY);
                } else
                {
                    if (((((((!(this._17n)) && (!((this._1vT == null))))) && (!((this._1vT == ""))))) && (!((hmod.ja.map.player_.name_ == this._1vT)))))
                    {
                        hmod.ja._FP(null, e.stageX, e.stageY, this._1vT, this._140);
                    }
                else
                    {
                        if (((((((this._17n) && (!((this._1vT == null))))) && (!((this._1vT == ""))))) && (!((hmod.ja.map.player_.name_ == this._1vT)))))
                        {
                            hmod.ja.FP(null, e.stageX, e.stageY, this._1vT, false, true);
                        }
                    }
                }
            } catch(e:Error)
            {
            }
        }

        public function draw(_arg1:_1C8, _arg2:int):Boolean{
            if (this.startTime_ == 0)
            {
                this.startTime_ = _arg2;
            }
            var _local3:int = (_arg2 - this.startTime_);
            if ((((_local3 > this.lifetime_)) || (((!((this.go_ == null))) && ((this.go_.map_ == null))))))
            {
                return (false);
            }
            if ((((this.go_ == null)) || (!(this.go_._1th))))
            {
                visible = false;
                return (true);
            }
            if (((this._08V) && (!(Parameters.data_.textBubbles))))
            {
                visible = false;
                return (true);
            }
            visible = true;
            x = int((this.go_._4M[0] + this._0aO.x));
            y = int((this.go_._4M[1] + this._0aO.y));
            return (true);
        }

        public function _1db():GameObject{
            return (this.go_);
        }

        public function dispose():void{
            parent.removeChild(this);
        }


    }
}//package 9T


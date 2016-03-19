// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.0S7

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.display.Bitmap;
    import _CU._13j;
    import com.company.assembleegameclient.objects.GameObject;
    import _Jy._1HZ;
    import flash.filters.DropShadowFilter;
    import com.company.util.MoreColorUtil;
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import com.company.assembleegameclient.objects.Player;
    import com.company.assembleegameclient.parameters.Parameters;

    public class _0S7 extends Sprite {

        public var _2i:Bitmap;
        private var text:_13j;
        private var _0DC:_0LM;
        private var color:uint;
        public var _0b5:Boolean;
        public var go:GameObject;
        public var _0Ex:_1HZ;
        private var _1MM:String;
        private var type:int;
        private var level:int;
        private var _2Z:Boolean;

        public function _0S7(_arg1:uint, _arg2:Boolean, _arg3:GameObject, _arg4:Boolean=false){
            this._2Z = _arg4;
            this._0b5 = _arg2;
            this.color = _arg1;
            this._2i = new Bitmap();
            this._2i.x = -4;
            this._2i.y = ((_arg4) ? -1 : -4);
            addChild(this._2i);
            this.text = new _13j().setSize(13).setColor(_arg1).setHTML(_arg2);
            if (!_arg2)
            {
                this.text.setTextWidth(66).setTextHeight(20).setBold(true);
            }
            this.text.x = 32;
            this.text.y = 6;
            this.text.filters = [new DropShadowFilter(0, 0, 0)];
            addChild(this.text);
            this._0Ex = this.text.textChanged;
            this.draw(_arg3);
        }

        public function draw(_arg1:GameObject, _arg2:ColorTransform=null):void{
            var _local3:Boolean;
            _local3 = this._0LF();
            this.go = _arg1;
            visible = !((_arg1 == null));
            if (((visible) && (((this._0ig()) || (_local3)))))
            {
                this.redraw();
                transform.colorTransform = ((_arg2) || (MoreColorUtil.identity));
            }
        }

        public function clear():void{
            this.go = null;
            visible = false;
        }

        public function _0LF():Boolean{
            return ((((this.go == null)) && ((visible == false))));
        }

        private function _0ig():Boolean{
            var _local1:Boolean = ((((!((this.go.name_ == this._1MM))) || (!((this.go._0Sj == this.level))))) || (!((this.go.objectType_ == this.type))));
            ((_local1) && (this._0v1()));
            return (_local1);
        }

        private function _0v1():void{
            this._1MM = this.go.name_;
            this.level = this.go._0Sj;
            this.type = this.go.objectType_;
        }

        private function redraw():void{
            this._2i.bitmapData = this.go.getPortrait();
            this.text.setStringBuilder(this.Hf());
            this.text.setColor(this.dO());
            this.text.update();
        }

        private function Hf():_0LM{
            this._0DC = ((this._0DC) || (new _0LM()));
            if (this._0b5)
            {
                this._20b();
            } else
            {
                if (this._0UU())
                {
                    this._0DC._0tP(this._1MM);
                } else
                {
                    this._0DC._0tP(ObjectLibrary.118[this.type]);
                }
            }
            return (this._0DC);
        }

        private function _20b():void{
            var _local1:String;
            var _local2:Object = {}
            if (this._0UU())
            {
                if (this._2Z)
                {
                    _local1 = "<b>{name}</b>\n({type}{level})";
                } else
                {
                    _local1 = "<b>{name}</b> ({type}{level})";
                }
                if ((((this.go.name_.length > 8)) && (!(this._2Z))))
                {
                    _local2.name = (this.go.name_.slice(0, 6) + "...");
                } else
                {
                    _local2.name = this.go.name_;
                }
                _local2.type = ObjectLibrary._118[this.type];
                _local2.level = (((this.level < 1)) ? "" : (" " + this.level));
            } else
            {
                _local1 = "<b>{name}</b>";
                _local2.name = ObjectLibrary._118[this.type];
            }
            this._0DC._0tP(_local1, _local2);
        }

        private function _0UU():Boolean{
            return (((!((this.go.name_ == null))) && (!((this.go.name_ == "")))));
        }

        private function dO():int{
            var _local1:Player = (this.go as Player);
            if (_local1 == null)
            {
                return (this.color);
            }
            if (_local1._0kh)
            {
                return (Parameters._19c);
            }
            if (_local1._1TS)
            {
                return (Parameters._0zj);
            }
            return (this.color);
        }


    }
}//package com.company.assembleegameclient.ui


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.Slot

package com.company.assembleegameclient.ui{
    import flash.display.Sprite;
    import flash.geom.Matrix;
    import flash.filters.ColorMatrixFilter;
    import com.company.util.MoreColorUtil;
    import flash.display.Bitmap;
    import flash.display.GraphicsSolidFill;
    import flash.display.GraphicsPath;

    import flash.display.IGraphicsData;
    import com.company.util._tu;
    import flash.geom.Point;
    import _CU.1CD;
    import flash.display.BitmapData;
    import com.company.util.AssetLibrary;
    import _04_._1JZ;
    import 1n4.1WS;


    public class Slot extends Sprite {

        public static const 1Ab:Matrix = new Matrix();
        public static const 1FT:int = 0;
        public static const 0Us:int = 1;
        public static const yn:int = 2;
        public static const 1yX:int = 3;
        public static const U3:int = 4;
        public static const U5:int = 5;
        public static const 1vW:int = 6;
        public static const 1qq:int = 7;
        public static const 0hG:int = 8;
        public static const 1S5:int = 9;
        public static const 1en:int = 10;
        public static const 0or:int = 11;
        public static const If:int = 12;
        public static const hU:int = 13;
        public static const ne:int = 14;
        public static const qx:int = 15;
        public static const s-:int = 16;
        public static const Xg:int = 17;
        public static const g9:int = 18;
        public static const xM:int = 19;
        public static const 0-q:int = 20;
        public static const 0LV:int = 21;
        public static const 14L:int = 22;
        public static const av:int = 23;
        public static const 08C:int = 24;
        public static const WIDTH:int = 40;
        public static const HEIGHT:int = 40;
        public static const BORDER:int = 4;
        private static const 0LS:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.DW(0x363636));

        public var type_:int;
        public var 1Ao:int;
        public var 7R:Array;
        public var 0pq:Bitmap;
        protected var 1Au:GraphicsSolidFill;
        protected var path_:GraphicsPath;
        private var graphicsData_:Vector.<IGraphicsData>;

        public function Slot(_arg1:int, _arg2:int, _arg3:Array){
            this.1Au = new GraphicsSolidFill(0x545454, 1);
            this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
            this.graphicsData_ = new <IGraphicsData>[this.1Au, this.path_, _tu.END_FILL];
            super();
            this.type_ = _arg1;
            this.1Ao = _arg2;
            this.7R = _arg3;
            this.0aJ();
        }

        public static function 1to(_arg1:int):String{
            switch (_arg1)
            {
                case 1FT:
                    return ("Any");
                case 0Us:
                    return ("Sword");
                case yn:
                    return ("Dagger");
                case 1yX:
                    return ("Bow");
                case U3:
                    return ("Tome");
                case U5:
                    return ("Shield");
                case 1vW:
                    return ("Leather Armor");
                case 1qq:
                    return ("Armor");
                case 0hG:
                    return ("Wand");
                case 1S5:
                    return ("Accessory");
                case 1en:
                    return ("Potion");
                case 0or:
                    return ("Spell");
                case If:
                    return ("Holy Seal");
                case hU:
                    return ("Cloak");
                case ne:
                    return ("Robe");
                case qx:
                    return ("Quiver");
                case s-:
                    return ("Helm");
                case Xg:
                    return ("Staff");
                case g9:
                    return ("Poison");
                case xM:
                    return ("Skull");
                case 0-q:
                    return ("Trap");
                case 0LV:
                    return ("Orb");
                case 14L:
                    return ("Prism");
                case av:
                    return ("Scepter");
                case 08C:
                    return ("Shuriken");
            }
            return ("Invalid Type!");
        }


        protected function 09l(_arg1:int, _arg2:int, _arg3:Boolean):Point{
            var _local4:Point = new Point();
            switch (_arg2)
            {
                case 1S5:
                    _local4.x = (((_arg1)==2878) ? 0 : -2);
                    _local4.y = ((_arg3) ? -2 : 0);
                    break;
                case 0or:
                    _local4.y = -2;
                    break;
            }
            return (_local4);
        }

        protected function 0aJ():void{
            var _local4:Point;
            var _local5:1CD;
            _tu.ln(this.path_);
            _tu.0S-(0, 0, WIDTH, HEIGHT, 4, this.7R, this.path_);
            graphics.clear();
            graphics.drawGraphicsData(this.graphicsData_);
            var _local1:BitmapData;
            var _local2:int;
            var _local3:int;
            switch (this.type_)
            {
                case 1FT:
                    break;
                case 0Us:
                    _local1 = AssetLibrary.1JR("lofiObj5", 48);
                    break;
                case yn:
                    _local1 = AssetLibrary.1JR("lofiObj5", 96);
                    break;
                case 1yX:
                    _local1 = AssetLibrary.1JR("lofiObj5", 80);
                    break;
                case U3:
                    _local1 = AssetLibrary.1JR("lofiObj6", 80);
                    break;
                case U5:
                    _local1 = AssetLibrary.1JR("lofiObj6", 112);
                    break;
                case 1vW:
                    _local1 = AssetLibrary.1JR("lofiObj5", 0);
                    break;
                case 1qq:
                    _local1 = AssetLibrary.1JR("lofiObj5", 32);
                    break;
                case 0hG:
                    _local1 = AssetLibrary.1JR("lofiObj5", 64);
                    break;
                case 1S5:
                    _local1 = AssetLibrary.1JR("lofiObj", 44);
                    break;
                case 0or:
                    _local1 = AssetLibrary.1JR("lofiObj6", 64);
                    break;
                case If:
                    _local1 = AssetLibrary.1JR("lofiObj6", 160);
                    break;
                case hU:
                    _local1 = AssetLibrary.1JR("lofiObj6", 32);
                    break;
                case ne:
                    _local1 = AssetLibrary.1JR("lofiObj5", 16);
                    break;
                case qx:
                    _local1 = AssetLibrary.1JR("lofiObj6", 48);
                    break;
                case s-:
                    _local1 = AssetLibrary.1JR("lofiObj6", 96);
                    break;
                case Xg:
                    _local1 = AssetLibrary.1JR("lofiObj5", 112);
                    break;
                case g9:
                    _local1 = AssetLibrary.1JR("lofiObj6", 128);
                    break;
                case xM:
                    _local1 = AssetLibrary.1JR("lofiObj6", 0);
                    break;
                case 0-q:
                    _local1 = AssetLibrary.1JR("lofiObj6", 16);
                    break;
                case 0LV:
                    _local1 = AssetLibrary.1JR("lofiObj6", 144);
                    break;
                case 14L:
                    _local1 = AssetLibrary.1JR("lofiObj6", 176);
                    break;
                case av:
                    _local1 = AssetLibrary.1JR("lofiObj6", 192);
                    break;
            }
            if (this.0pq == null)
            {
                if (_local1 != null)
                {
                    _local4 = this.09l(-1, this.type_, true);
                    this.0pq = new Bitmap(_local1);
                    this.0pq.x = (BORDER + _local4.x);
                    this.0pq.y = (BORDER + _local4.y);
                    this.0pq.scaleX = 4;
                    this.0pq.scaleY = 4;
                    this.0pq.filters = [0LS];
                    addChild(this.0pq);
                } else
                {
                    if (this.1Ao > 0)
                    {
                        _local5 = _1JZ.0JF().getInstance(1CD);
                        _local1 = _local5.make(new 1WS(String(this.1Ao)), 26, 0x363636, true, 1Ab, false);
                        this.0pq = new Bitmap(_local1);
                        this.0pq.x = ((WIDTH / 2) - (_local1.width / 2));
                        this.0pq.y = ((HEIGHT / 2) - 18);
                        addChild(this.0pq);
                    }
                }
            }
        }


    }
}//package com.company.assembleegameclient.ui


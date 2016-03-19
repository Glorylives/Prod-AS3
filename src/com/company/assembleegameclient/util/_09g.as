// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.09g

package com.company.assembleegameclient.util{
    import flash.geom.ColorTransform;
    import com.company.assembleegameclient.objects.ObjectLibrary;
    import flash.display.Sprite;
    import flash.filters.DropShadowFilter;
    import com.company.rotmg.graphics.StarGraphic;
    import com.company.util.AssetLibrary;
    import flash.display.BitmapData;

    public class _09g {

        public static const _1wz:Vector.<int> = new <int>[20, 150, 400, 800, 2000];
        private static const ke:ColorTransform = new ColorTransform((138 / 0xFF), (152 / 0xFF), (222 / 0xFF));
        private static const _66:ColorTransform = new ColorTransform((49 / 0xFF), (77 / 0xFF), (219 / 0xFF));
        private static const _0YM:ColorTransform = new ColorTransform((193 / 0xFF), (39 / 0xFF), (45 / 0xFF));
        private static const zH:ColorTransform = new ColorTransform((247 / 0xFF), (147 / 0xFF), (30 / 0xFF));
        private static const _10z:ColorTransform = new ColorTransform((0xFF / 0xFF), (0xFF / 0xFF), (0 / 0xFF));
        public static const _1zF:Vector.<ColorTransform> = new <ColorTransform>[ke, _66, _0YM, zH, _10z];


        public static function _1yg():int{
            return ((ObjectLibrary._1wa.length * _1wz.length));
        }

        public static function numStars(_arg1:int):int{
            var _local2:int;
            while ((((_local2 < _1wz.length)) && ((_arg1 >= _1wz[_local2]))))
            {
                _local2++;
            }
            return (_local2);
        }

        public static function nextStarFame(_arg1:int, _arg2:int):int{
            var _local3:int = Math.max(_arg1, _arg2);
            var _local4:int;
            while (_local4 < _1wz.length)
            {
                if (_1wz[_local4] > _local3)
                {
                    return (_1wz[_local4]);
                }
                _local4++;
            }
            return (-1);
        }

        public static function _1Hg(_arg1:int, _arg2:int, _arg3:XML):int{
            var _local6:XML;
            var _local4:int;
            var _local5:int;
            for each (_local6 in _arg3.ClassStats)
            {
                if (_arg1 == int(_local6.@objectType))
                {
                    _local5 = int(_local6.BestFame);
                } else
                {
                    _local4 = (_local4 + _09g.numStars(_local6.BestFame));
                }
            }
            _local4 = (_local4 + _09g.numStars(Math.max(_local5, _arg2)));
            return (_local4);
        }

        public static function _1Ru(_arg1:int):Sprite{
            var _local2:Sprite = _12D(_arg1);
            _local2.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
            _local2.scaleX = 1.4;
            _local2.scaleY = 1.4;
            return (_local2);
        }

        public static function _12D(_arg1:int):Sprite{
            var _local2:Sprite = new StarGraphic();
            if (_arg1 < ObjectLibrary._1wa.length)
            {
                _local2.transform.colorTransform = ke;
            } else
            {
                if (_arg1 < (ObjectLibrary._1wa.length * 2))
                {
                    _local2.transform.colorTransform = _66;
                } else
                {
                    if (_arg1 < (ObjectLibrary._1wa.length * 3))
                    {
                        _local2.transform.colorTransform = _0YM;
                    } else
                    {
                        if (_arg1 < (ObjectLibrary._1wa.length * 4))
                        {
                            _local2.transform.colorTransform = zH;
                        } else
                        {
                            if (_arg1 < (ObjectLibrary._1wa.length * 5))
                            {
                                _local2.transform.colorTransform = _10z;
                            }
                        }
                    }
                }
            }
            return (_local2);
        }

        public static function _0YP(_arg1:int):Sprite{
            var _local2:Sprite;
            var _local3:Sprite;
            _local2 = _12D(_arg1);
            _local3 = new Sprite();
            _local3.graphics.beginFill(0, 0.4);
            var _local4:int = ((_local2.width / 2) + 2);
            var _local5:int = ((_local2.height / 2) + 2);
            _local3.graphics.drawCircle(_local4, _local5, _local4);
            _local2.x = 2;
            _local2.y = 1;
            _local3.addChild(_local2);
            _local3.filters = [new DropShadowFilter(0, 0, 0, 0.5, 6, 6, 1)];
            return (_local3);
        }

        public static function _0jZ():BitmapData{
            var _local1:BitmapData = AssetLibrary._1JR("lofiObj3", 224);
            return (TextureRedrawer.redraw(_local1, 40, true, 0));
        }


    }
}//package com.company.assembleegameclient.util


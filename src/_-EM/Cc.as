// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//EM.Cc

package EM{
    import flash.display.DisplayObjectContainer;
    import flash.events.Event;
    import flash.display.DisplayObject;
    import flash.display.LoaderInfo;
    import flash.geom.Rectangle;

    public class Cc {

        private static var 1Q4:Console;
        private static var _config:12N;


        public static function get config():12N{
            if (!_config)
            {
                _config = new 12N();
            };
            return (_config);
        }

        public static function start(_arg1:DisplayObjectContainer, _arg2:String=""):void{
            if (1Q4)
            {
                if (((_arg1) && (!(1Q4.parent))))
                {
                    _arg1.addChild(1Q4);
                };
            } else
            {
                1Q4 = new Console(_arg2, config);
                if (_arg1)
                {
                    _arg1.addChild(1Q4);
                };
            };
        }

        public static function zy(_arg1:DisplayObject, _arg2:String=""):void{
            if (1Q4)
            {
                if (((((_arg1) && (_arg1.stage))) && (!((1Q4.parent == _arg1.stage)))))
                {
                    _arg1.stage.addChild(1Q4);
                };
            } else
            {
                if (((_arg1) && (_arg1.stage)))
                {
                    start(_arg1.stage, _arg2);
                } else
                {
                    1Q4 = new Console(_arg2, config);
                    if (_arg1)
                    {
                        _arg1.addEventListener(Event.ADDED_TO_STAGE, 1bk);
                    };
                };
            };
        }

        public static function add(_arg1, _arg2:int=2, _arg3:Boolean=false):void{
            if (1Q4)
            {
                1Q4.add(_arg1, _arg2, _arg3);
            };
        }

        public static function ch(_arg1, _arg2, _arg3:int=2, _arg4:Boolean=false):void{
            if (1Q4)
            {
                1Q4.ch(_arg1, _arg2, _arg3, _arg4);
            };
        }

        public static function log(... _args):void{
            if (1Q4)
            {
                1Q4.log.apply(null, _args);
            };
        }

        public static function info(... _args):void{
            if (1Q4)
            {
                1Q4.info.apply(null, _args);
            };
        }

        public static function debug(... _args):void{
            if (1Q4)
            {
                1Q4.debug.apply(null, _args);
            };
        }

        public static function 0K(... _args):void{
            if (1Q4)
            {
                1Q4.0K.apply(null, _args);
            };
        }

        public static function error(... _args):void{
            if (1Q4)
            {
                1Q4.error.apply(null, _args);
            };
        }

        public static function 0bx(... _args):void{
            if (1Q4)
            {
                1Q4.0bx.apply(null, _args);
            };
        }

        public static function 1jz(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.9Z);
            };
        }

        public static function 0EL(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.INFO);
            };
        }

        public static function Fs(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.DEBUG);
            };
        }

        public static function 1Ck(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.WARN);
            };
        }

        public static function Y5(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.ERROR);
            };
        }

        public static function dx(_arg1, ... _args):void{
            if (1Q4)
            {
                1Q4.m7(_arg1, _args, Console.FATAL);
            };
        }

        public static function xU(_arg1, _arg2:int=-1, _arg3:int=5):void{
            if (1Q4)
            {
                1Q4.xU(_arg1, _arg2, _arg3);
            };
        }

        public static function Uu(_arg1, _arg2, _arg3:int=-1, _arg4:int=5):void{
            if (1Q4)
            {
                1Q4.Uu(_arg1, _arg2, _arg3, _arg4);
            };
        }

        public static function inspect(_arg1:Object, _arg2:Boolean=true):void{
            if (1Q4)
            {
                1Q4.inspect(_arg1, _arg2);
            };
        }

        public static function f-(_arg1, _arg2:Object, _arg3:Boolean=true):void{
            if (1Q4)
            {
                1Q4.f-(_arg1, _arg2, _arg3);
            };
        }

        public static function explode(_arg1:Object, _arg2:int=3):void{
            if (1Q4)
            {
                1Q4.explode(_arg1, _arg2);
            };
        }

        public static function explodech(_arg1, _arg2:Object, _arg3:int=3):void{
            if (1Q4)
            {
                1Q4.explodech(_arg1, _arg2, _arg3);
            };
        }

        public static function t-(... _args):void{
            if (1Q4)
            {
                1Q4.t-.apply(null, _args);
            };
        }

        public static function m2(_arg1, _arg2:int, ... _args):void{
            if (1Q4)
            {
                1Q4.m2.apply(null, new Array(_arg1, _arg2).concat(_args));
            };
        }

        public static function map(_arg1:DisplayObjectContainer, _arg2:uint=0):void{
            if (1Q4)
            {
                1Q4.map(_arg1, _arg2);
            };
        }

        public static function mapch(_arg1, _arg2:DisplayObjectContainer, _arg3:uint=0):void{
            if (1Q4)
            {
                1Q4.mapch(_arg1, _arg2, _arg3);
            };
        }

        public static function clear(_arg1:String=null):void{
            if (1Q4)
            {
                1Q4.clear(_arg1);
            };
        }

        public static function 0cJ(_arg1:1L8, _arg2:Function=null, _arg3:Array=null):void{
            if (1Q4)
            {
                1Q4.0cJ(_arg1, _arg2, _arg3);
            };
        }

        public static function 4y(_arg1:String, _arg2:Function, _arg3:Array=null, _arg4:String=null):void{
            if (1Q4)
            {
                1Q4.4y(_arg1, _arg2, _arg3, _arg4);
            };
        }

        public static function 0Af(_arg1:LoaderInfo):void{
            if (1Q4)
            {
                1Q4.0Af(_arg1);
            };
        }

        public static function 0HC(_arg1:String, _arg2:Object, _arg3:Boolean=false):void{
            if (1Q4)
            {
                1Q4.0HC(_arg1, _arg2, _arg3);
            };
        }

        public static function 1Az(_arg1:String, _arg2:Function, _arg3:String="", _arg4:Boolean=true, _arg5:String=";"):void{
            if (1Q4)
            {
                1Q4.1Az(_arg1, _arg2, _arg3, _arg4, _arg5);
            };
        }

        public static function 1XE(_arg1:Object, _arg2:String=null):String{
            if (1Q4)
            {
                return (1Q4.1XE(_arg1, _arg2));
            };
            return (null);
        }

        public static function 0EI(_arg1:String):void{
            if (1Q4)
            {
                1Q4.0EI(_arg1);
            };
        }

        public static function 0HV(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number=-1, _arg5:String=null, _arg6:Rectangle=null, _arg7:Boolean=false):void{
            if (1Q4)
            {
                1Q4.0HV(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
            };
        }

        public static function d0(_arg1:String, _arg2:Number=NaN, _arg3:Number=NaN):void{
            if (1Q4)
            {
                1Q4.d0(_arg1, _arg2, _arg3);
            };
        }

        public static function removeGraph(_arg1:String, _arg2:Object=null, _arg3:String=null):void{
            if (1Q4)
            {
                1Q4.removeGraph(_arg1, _arg2, _arg3);
            };
        }

        public static function setViewingChannels(... _args):void{
            if (1Q4)
            {
                1Q4.setViewingChannels.apply(null, _args);
            };
        }

        public static function 2-6(... _args):void{
            if (1Q4)
            {
                1Q4.2-6.apply(null, _args);
            };
        }

        public static function set w9(_arg1:uint):void{
            if (1Q4)
            {
                1Q4.w9 = _arg1;
            };
        }

        public static function get width():Number{
            if (1Q4)
            {
                return (1Q4.width);
            };
            return (0);
        }

        public static function set width(_arg1:Number):void{
            if (1Q4)
            {
                1Q4.width = _arg1;
            };
        }

        public static function get height():Number{
            if (1Q4)
            {
                return (1Q4.height);
            };
            return (0);
        }

        public static function set height(_arg1:Number):void{
            if (1Q4)
            {
                1Q4.height = _arg1;
            };
        }

        public static function get x():Number{
            if (1Q4)
            {
                return (1Q4.x);
            };
            return (0);
        }

        public static function set x(_arg1:Number):void{
            if (1Q4)
            {
                1Q4.x = _arg1;
            };
        }

        public static function get y():Number{
            if (1Q4)
            {
                return (1Q4.y);
            };
            return (0);
        }

        public static function set y(_arg1:Number):void{
            if (1Q4)
            {
                1Q4.y = _arg1;
            };
        }

        public static function get visible():Boolean{
            if (1Q4)
            {
                return (1Q4.visible);
            };
            return (false);
        }

        public static function set visible(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.visible = _arg1;
            };
        }

        public static function get fpsMonitor():Boolean{
            if (1Q4)
            {
                return (1Q4.fpsMonitor);
            };
            return (false);
        }

        public static function set fpsMonitor(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.fpsMonitor = _arg1;
            };
        }

        public static function get memoryMonitor():Boolean{
            if (1Q4)
            {
                return (1Q4.memoryMonitor);
            };
            return (false);
        }

        public static function set memoryMonitor(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.memoryMonitor = _arg1;
            };
        }

        public static function get commandLine():Boolean{
            if (1Q4)
            {
                return (1Q4.commandLine);
            };
            return (false);
        }

        public static function set commandLine(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.commandLine = _arg1;
            };
        }

        public static function get displayRoller():Boolean{
            if (1Q4)
            {
                return (1Q4.displayRoller);
            };
            return (false);
        }

        public static function set displayRoller(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.displayRoller = _arg1;
            };
        }

        public static function setRollerCaptureKey(_arg1:String, _arg2:Boolean=false, _arg3:Boolean=false, _arg4:Boolean=false):void{
            if (1Q4)
            {
                1Q4.setRollerCaptureKey(_arg1, _arg4, _arg2, _arg3);
            };
        }

        public static function get remoting():Boolean{
            if (1Q4)
            {
                return (1Q4.remoting);
            };
            return (false);
        }

        public static function set remoting(_arg1:Boolean):void{
            if (1Q4)
            {
                1Q4.remoting = _arg1;
            };
        }

        public static function remotingSocket(_arg1:String, _arg2:int):void{
            if (1Q4)
            {
                1Q4.remotingSocket(_arg1, _arg2);
            };
        }

        public static function remove():void{
            if (1Q4)
            {
                if (1Q4.parent)
                {
                    1Q4.parent.removeChild(1Q4);
                };
                1Q4 = null;
            };
        }

        public static function 1xe(_arg1:String="\r\n"):String{
            if (1Q4)
            {
                return (1Q4.1xe(_arg1));
            };
            return ("");
        }

        public static function get 1hP():Console{
            return (1Q4);
        }

        private static function 1bk(_arg1:Event):void{
            var _local2:DisplayObjectContainer = (_arg1.currentTarget as DisplayObjectContainer);
            _local2.removeEventListener(Event.ADDED_TO_STAGE, 1bk);
            if (((1Q4) && ((1Q4.parent == null))))
            {
                _local2.stage.addChild(1Q4);
            };
        }


    }
}//package EM


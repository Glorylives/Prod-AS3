﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//XF.1tq

package XF{
    import flash.events.IEventDispatcher;
    import flash.events.Event;
    import _Jy.*;

    public interface 1tq extends 2v {

        function get 0g6():String;
        function get eventClass():Class;
        function get target():IEventDispatcher;
        function set target(_arg1:IEventDispatcher):void;
        function dispatchEvent(_arg1:Event):Boolean;

    }
}//package XF


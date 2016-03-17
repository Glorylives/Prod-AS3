// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1Tb.0cg

package 1Tb{
    import flash.utils.Dictionary;
    import EM.Console;
    import flash.utils.getQualifiedClassName;
    import flash.utils.getTimer;
    import flash.system.System;

    public class 0cg extends ak {

        private var each:Object;
        private var T6:Dictionary;
        private var _count:uint;

        public function 0cg(_arg1:Console){
            super(_arg1);
            this.each = new Object();
            this.T6 = new Dictionary(true);
            console.remoter.registerCallback("gc", this.gc);
        }

        public function 1XE(_arg1:Object, _arg2:String):String{
            var _local3:String = getQualifiedClassName(_arg1);
            if (!_arg2)
            {
                _arg2 = ((_local3 + "@") + getTimer());
            };
            if (this.T6[_arg1])
            {
                if (this.each[this.T6[_arg1]])
                {
                    this.0EI(this.T6[_arg1]);
                };
            };
            if (this.each[_arg2])
            {
                if (this.T6[_arg1] == _arg2)
                {
                    this._count--;
                } else
                {
                    _arg2 = ((((_arg2 + "@") + getTimer()) + "_1yq") + Math.floor((Math.random() * 100)));
                };
            };
            this.each[_arg2] = true;
            this._count++;
            this.T6[_arg1] = _arg2;
            return (_arg2);
        }

        public function 0EI(_arg1:String):void{
            var _local2:Object;
            for (_local2 in this.T6)
            {
                if (this.T6[_local2] == _arg1)
                {
                    delete this.T6[_local2];
                };
            };
            if (this.each[_arg1])
            {
                delete this.each[_arg1];
                this._count--;
            };
        }

        public function update():void{
            var _local3:Object;
            var _local4:String;
            if (this._count == 0)
            {
                return;
            };
            var _local1:Array = new Array();
            var _local2:Object = new Object();
            for (_local3 in this.T6)
            {
                _local2[this.T6[_local3]] = true;
            };
            for (_local4 in this.each)
            {
                if (!_local2[_local4])
                {
                    _local1.push(_local4);
                    delete this.each[_local4];
                    this._count--;
                };
            };
            if (_local1.length)
            {
                report(((("<b>GARBAGE COLLECTED " + _local1.length) + " item(s): </b>") + _local1.join(", ")), -2);
            };
        }

        public function get count():uint{
            return (this._count);
        }

        public function gc():void{
            var ok:Boolean;
            var str:String;
            if (remoter.remoting == xi.1pv)
            {
                try
                {
                    remoter.send("gc");
                } catch(e:Error)
                {
                    report(e, 10);
                };
            } else
            {
                try
                {
                    if (System["gc"] != null)
                    {
                        var _local2 = System;
                        (_local2["gc"]());
                        ok = true;
                    };
                } catch(e:Error)
                {
                };
                str = ("Manual garbage collection " + ((ok) ? "successful." : "FAILED. You need debugger version _of flash player."));
                report(str, ((ok) ? -1 : 10));
            };
        }


    }
}//package 1Tb


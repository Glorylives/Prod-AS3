// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//19Z.1ZG

package _19Z{
    import flash.display.Loader;
    import _0kK._pJ;
    import flash.display.DisplayObject;
    import _0kK._1jf;
    import flash.net.URLRequest;
    import flash.system.LoaderContext;

    public class _1ZG extends _0Rq {

        private var loader:Loader;
        private var _0xH:_pJ;

        public function _1ZG(){
            this.loader = (addChild(new Loader()) as Loader);
            super();
        }

        override public function get content():DisplayObject{
            return (this.loader.content);
        }

        override public function get contentLoaderInfo():_pJ{
            if (this._0xH == null)
            {
                this._0xH = new _1jf();
                this._0xH.loaderInfo = this.loader.contentLoaderInfo;
            }
            return (this._0xH);
        }

        override public function load(_arg1:URLRequest, _arg2:LoaderContext=null):void{
            this.loader.load(_arg1, _arg2);
        }

        override public function unload():void{
            this.loader.unload();
        }


    }
}//package 19Z


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//19Z.1ZG

package 19Z{
    import flash.display.Loader;
    import 0kK.pJ;
    import flash.display.DisplayObject;
    import 0kK.1jf;
    import flash.net.URLRequest;
    import flash.system.LoaderContext;

    public class 1ZG extends 0Rq {

        private var loader:Loader;
        private var 0xH:pJ;

        public function 1ZG(){
            this.loader = (addChild(new Loader()) as Loader);
            super();
        }

        override public function get content():DisplayObject{
            return (this.loader.content);
        }

        override public function get contentLoaderInfo():pJ{
            if (this.0xH == null)
            {
                this.0xH = new 1jf();
                this.0xH.loaderInfo = this.loader.contentLoaderInfo;
            }
            return (this.0xH);
        }

        override public function load(_arg1:URLRequest, _arg2:LoaderContext=null):void{
            this.loader.load(_arg1, _arg2);
        }

        override public function unload():void{
            this.loader.unload();
        }


    }
}//package 19Z


// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//2-g.0vy

package 2-g{
    import flash.text.TextFieldAutoSize;
    import EM.Console;
    import flash.events.TextEvent;

    public class 0vy extends 1ZC {

        public static const NAME:String = "channelsPanel";

        public function 0vy(_arg1:Console){
            super(_arg1);
            name = NAME;
            init(10, 10, false);
            8h = 0AQ("channelsField");
            8h.wordWrap = true;
            8h.width = 160;
            8h.multiline = true;
            8h.autoSize = TextFieldAutoSize.LEFT;
            25e(8h, this.onMenuRollOver, this.v5);
            Qf(8h);
            addChild(8h);
        }

        public function update():void{
            8h.wordWrap = false;
            8h.width = 80;
            var _local1:String = ('<high><menu> <b><a href="event:close">X</a></b></menu> ' + console.panels.mainPanel.getChannelsLink());
            8h.htmlText = (_local1 + "</high>");
            if (8h.width > 160)
            {
                8h.wordWrap = true;
                8h.width = 160;
            }
            width = (8h.width + 4);
            height = 8h.height;
        }

        private function onMenuRollOver(_arg1:TextEvent):void{
            console.panels.mainPanel.onMenuRollOver(_arg1, this);
        }

        protected function v5(_arg1:TextEvent):void{
            8h.setSelection(0, 0);
            if (_arg1.text == "close")
            {
                console.panels.channelsPanel = false;
            } else
            {
                if (_arg1.text.substring(0, 8) == "channel_")
                {
                    console.panels.mainPanel.onChannelPressed(_arg1.text.substring(8));
                }
            }
            8h.setSelection(0, 0);
            _arg1.stopPropagation();
        }


    }
}//package 2-g


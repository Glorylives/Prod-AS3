// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//EM.1LM

package EM{
    import flash.text.StyleSheet;

    public class 1LM {

        public var menuFont:String = "Arial";
        public var menuFontSize:int = 12;
        public var Gq:String = "Verdana";
        public var traceFontSize:int = 11;
        public var backgroundColor:uint;
        public var mo:Number = 0.9;
        public var controlColor:uint = 0x990000;
        public var controlSize:uint = 5;
        public var commandLineColor:uint = 0x10AA00;
        public var highColor:uint = 0xFFFFFF;
        public var lowColor:uint = 0xC0C0C0;
        public var fV:uint = 0xC0C0C0;
        public var 0hv:uint = 0xFF8800;
        public var 1LG:uint = 0xDD5500;
        public var 1ig:uint = 0xFFFFFF;
        public var 16L:uint = 39372;
        public var priority0:uint = 3831610;
        public var priority1:uint = 4495684;
        public var priority2:uint = 7846775;
        public var priority3:uint = 10539168;
        public var priority4:uint = 14085846;
        public var priority5:uint = 0xE9E9E9;
        public var priority6:uint = 16768477;
        public var priority7:uint = 16755370;
        public var priority8:uint = 16742263;
        public var priority9:uint = 16720418;
        public var priority10:uint = 16720418;
        public var priorityC1:uint = 39372;
        public var priorityC2:uint = 0xFF8800;
        public var topMenu:Boolean = true;
        public var showCommandLineScope:Boolean = true;
        public var maxChannelsInMenu:int = 7;
        public var 1gn:int = 3;
        public var m3:int = 10;
        private var 7S:StyleSheet;

        public function 1LM(){
            this.7S = new StyleSheet();
        }

        public function 0V5():void{
            this.backgroundColor = 0xFFFFFF;
            this.controlColor = 16724787;
            this.commandLineColor = 0x66CC00;
            this.highColor = 0;
            this.lowColor = 0x333333;
            this.fV = 0x444444;
            this.0hv = 0xCC1100;
            this.1LG = 0x881100;
            this.1ig = 0;
            this.16L = 26282;
            this.priority0 = 4497476;
            this.priority1 = 3379251;
            this.priority2 = 2258722;
            this.priority3 = 1135889;
            this.priority4 = 0x3300;
            this.priority5 = 0;
            this.priority6 = 0x660000;
            this.priority7 = 0x990000;
            this.priority8 = 0xBB0000;
            this.priority9 = 0xDD0000;
            this.priority10 = 0xDD0000;
            this.priorityC1 = 39372;
            this.priorityC2 = 0xFF6600;
        }

        public function 0DK():void{
            this.traceFontSize = 13;
            this.menuFontSize = 14;
        }

        public function updateStyleSheet():void{
            this.7S.setStyle("high", {
                color:this.0rJ(this.highColor),
                fontFamily:this.menuFont,
                fontSize:this.menuFontSize,
                display:"inline"
            });
            this.7S.setStyle("low", {
                color:this.0rJ(this.lowColor),
                fontFamily:this.menuFont,
                fontSize:(this.menuFontSize - 2),
                display:"inline"
            });
            this.7S.setStyle("menu", {
                color:this.0rJ(this.0hv),
                display:"inline"
            });
            this.7S.setStyle("menuHi", {
                color:this.0rJ(this.1LG),
                display:"inline"
            });
            this.7S.setStyle("chs", {
                color:this.0rJ(this.1ig),
                fontSize:this.menuFontSize,
                leading:"2",
                display:"inline"
            });
            this.7S.setStyle("ch", {
                color:this.0rJ(this.16L),
                display:"inline"
            });
            this.7S.setStyle("tt", {
                color:this.0rJ(this.0hv),
                fontFamily:this.menuFont,
                fontSize:this.menuFontSize,
                textAlign:"center"
            });
            this.7S.setStyle("r", {
                textAlign:"right",
                display:"inline"
            });
            this.7S.setStyle("p", {
                fontFamily:this.Gq,
                fontSize:this.traceFontSize
            });
            this.7S.setStyle("p0", {
                color:this.0rJ(this.priority0),
                display:"inline"
            });
            this.7S.setStyle("p1", {
                color:this.0rJ(this.priority1),
                display:"inline"
            });
            this.7S.setStyle("p2", {
                color:this.0rJ(this.priority2),
                display:"inline"
            });
            this.7S.setStyle("p3", {
                color:this.0rJ(this.priority3),
                display:"inline"
            });
            this.7S.setStyle("p4", {
                color:this.0rJ(this.priority4),
                display:"inline"
            });
            this.7S.setStyle("p5", {
                color:this.0rJ(this.priority5),
                display:"inline"
            });
            this.7S.setStyle("p6", {
                color:this.0rJ(this.priority6),
                display:"inline"
            });
            this.7S.setStyle("p7", {
                color:this.0rJ(this.priority7),
                display:"inline"
            });
            this.7S.setStyle("p8", {
                color:this.0rJ(this.priority8),
                display:"inline"
            });
            this.7S.setStyle("p9", {
                color:this.0rJ(this.priority9),
                display:"inline"
            });
            this.7S.setStyle("p10", {
                color:this.0rJ(this.priority10),
                fontWeight:"bold",
                display:"inline"
            });
            this.7S.setStyle("p-1", {
                color:this.0rJ(this.priorityC1),
                display:"inline"
            });
            this.7S.setStyle("p-2", {
                color:this.0rJ(this.priorityC2),
                display:"inline"
            });
            this.7S.setStyle("logs", {
                color:this.0rJ(this.fV),
                display:"inline"
            });
        }

        public function get styleSheet():StyleSheet{
            return (this.7S);
        }

        private function 0rJ(_arg1:Number):String{
            return (("#" + _arg1.toString(16)));
        }


    }
}//package EM


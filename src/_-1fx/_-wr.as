// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//1fx.wr

package 1fx{
    import com.google.analytics.GATracker;
    import com.company.googleanalytics.GA;
    import flash.display.Stage;

    public class wr {

        private var tracker:GATracker;


        public function init(_arg1:Stage, _arg2:String):void{
            this.tracker = new GATracker(_arg1, _arg2);
            GA.setTracker(this.tracker);
        }

        public function trackEvent(_arg1:String, _arg2:String, _arg3:String, _arg4:Number):Boolean{
            return (this.tracker.trackEvent(_arg1, _arg2, _arg3, _arg4));
        }

        public function 25F(_arg1:String):void{
            this.tracker.trackPageview(_arg1);
        }


    }
}//package 1fx


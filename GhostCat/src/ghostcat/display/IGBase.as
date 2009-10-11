package ghostcat.display
{
	import flash.geom.Point;
	
	import ghostcat.display.bitmap.IBitmapDataDrawer;
	import ghostcat.display.bitmap.IShapeDrawer;

	/**
	 * GBase接口 
	 * 
	 * @author flashyiyi
	 * 
	 */
	public interface IGBase extends IDisplayObject,IData,ICursorManagerClient,IToolTipManagerClient,IBitmapDataDrawer,IShapeDrawer
	{
		/**
		 * 是否激活
		 * @param v
		 * 
		 */
		function set enabled(v:Boolean):void
		function get enabled():Boolean;
		
		/**
		 * 是否暂停
		 * @param v
		 * 
		 */
		function set paused(v:Boolean):void
		function get paused():Boolean;
		
		/**
		 * 是否激活时基
		 * @param v
		 * 
		 */
		function set enabledTick(v:Boolean):void
		function get enabledTick():Boolean;
		
		/**
		 * 当前坐标
		 * 
		 */
		function get position():Point
		
		/**
		 * 当前坐标
		 * 
		 */
		function get oldPosition():Point
			
		/**
		 * 设置坐标
		 * @param x
		 * @param y
		 * @param noEvent	是否触发MOVE事件
		 * 
		 */
		function setPosition(x:Number,y:Number,noEvent:Boolean = false):void
		
		/**
		 * 销毁方法
		 * 
		 */
		function destory():void
		
		/**
		 * 在之后更新坐标
		 */
		function invalidatePosition():void
		
		/**
		 * 在之后更新大小
		 */
		function invalidateSize():void
		
		/**
		 * 在之后更新显示
		 */
		function invalidateDisplayList():void
		
		/**
		 * 更新坐标并发事件
		 */
		function vaildPosition(noEvent:Boolean = false):void
		
		/**
		 * 更新大小并发事件 
		 */
		function vaildSize(noEvent:Boolean = false):void
		
		/**
		 * 更新显示并发事件 
		 */
		function vaildDisplayList(noEvent:Boolean = false):void
	}
}
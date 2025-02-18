//
//  Copyright 2012 Google Inc. All Rights Reserved.
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//      http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

package tileui.physics.events
{
	import flash.events.Event;
	
	import tileui.physics.particles.IPhysicsParticle;

	public class ParticleEvent extends Event
	{
		public static const PARTICLE_UPDATE:String = "particleUpdate";
		public static const PARTICLE_COLLISION:String = "particleCollision";
		
		public static const DRAG_OUTSIDE:String = "dragOutside";
		
		private var _otherParticle:IPhysicsParticle;
		
		public function get otherParticle():IPhysicsParticle {
			return _otherParticle;
		}
		
		public function ParticleEvent(type:String, bubbles:Boolean = false,
                                cancelable:Boolean = false,
                                otherParticle:IPhysicsParticle=null)
    	{
    		_otherParticle = otherParticle;
    		
    		super(type, bubbles, cancelable); 
    	}
	}
}
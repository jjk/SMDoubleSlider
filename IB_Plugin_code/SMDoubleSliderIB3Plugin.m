//
//  SMDoubleSliderIB3Plugin.m
//  SMDoubleSlider
//
//  Created by Sean McBride on Fri Sep 14 2007.
//SMDoubleSlider Copyright (c) 2003-2008, Snowmint Creative Solutions LLC http://www.snowmintcs.com/
//All rights reserved.
//
//Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//¥ Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//¥ Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//¥ Neither the name of Snowmint Creative Solutions LLC nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
//
//THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "SMDoubleSliderIB3Plugin.h"
#import "SMDoubleSliderIB3Inspector.h"
#import "SMDoubleSlider.h"

@implementation SMDoubleSliderIB3Plugin

// Returns the names of the library nib files containing the objects you want to integrate into the library window
- (NSArray*)libraryNibNames
{
    return [NSArray arrayWithObject:@"SMDoubleSliderIB3Library"];
}

// Returns the user-readable name displayed for your plug-in object in the Interface Builder preferences window
- (NSString*)label
{
	return @"SMDoubleSlider";
}

- (NSArray*)requiredFrameworks
{
	NSBundle* frameworkBundle = [NSBundle bundleWithIdentifier:@"com.snowmint.framework.smdoubleslider"];
	return [NSArray arrayWithObject:frameworkBundle];
}

- (void)document:(IBDocument *)document didAddDraggedObjects:(NSArray *)roots fromDraggedLibraryView:(NSView *)view
{
	unsigned int	t_index;
	SMDoubleSlider	*t_slider;

	for ( t_index = 0; t_index < [ roots count ]; t_index++ )
	{
		t_slider = [ roots objectAtIndex:t_index ];
		[ t_slider setMaxValue:100.0 ];
		[ t_slider setMinValue:0.0 ];
		[ t_slider setDoubleLoValue:33.0 ];
		[ t_slider setDoubleHiValue:66.0 ];
	}
}

@end

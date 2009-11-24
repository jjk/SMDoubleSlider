//
//  SMDoubleSliderInspector.m
//  SMDoubleSlider
//
//  Created by Kyle Hammond on Fri Aug 01 2003.
//SMDoubleSlider Copyright (c) 2003-2007, Snowmint Creative Solutions LLC http://www.snowmintcs.com/
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
#import "SMDoubleSliderInspector.h"
#import "SMDoubleSlider.h"

@implementation SMDoubleSliderInspector

- (id)init
{
    self = [ super init ];
    if ( self )
        [ NSBundle loadNibNamed:@"SMDoubleSliderInspector" owner:self ];
    return self;
}

- (void)ok:(id)sender
{
    if ( sender == _sm_valueLock )
        [ [ self object ] setLockedSliders:[ _sm_valueLock state ] ];
    else if ( sender == _sm_minMaxForm )
    {
        [ [ self object ] setMinValue:[ [ _sm_minMaxForm cellAtIndex:0 ] doubleValue ] ];
        [ [ self object ] setMaxValue:[ [ _sm_minMaxForm cellAtIndex:1 ] doubleValue ] ];
    }
    else if ( sender == _sm_loHiForm )
    {
        [ [ self object ] setDoubleLoValue:[ [ _sm_loHiForm cellAtIndex:0 ] doubleValue ] ];
        [ [ self object ] setDoubleHiValue:[ [ _sm_loHiForm cellAtIndex:1 ] doubleValue ] ];
    }
    else if ( sender == _sm_optionsMatrix )
    {
        [ [ self object ] setContinuous:[ [ sender cellAtRow:0 column:0  ] state ] ];
        [ [ self object ] setEnabled:[ [ sender cellAtRow:1 column:0  ] state ] ];
        [ [ self object ] setControlSize:( [ [ sender cellAtRow:2 column:0  ] state ] ?
                    NSSmallControlSize : NSRegularControlSize ) ];
    }
    else if ( sender == _sm_markerNumOf )
        [ [ self object ] setNumberOfTickMarks:[ sender intValue ] ];
    else if ( sender == _sm_markerPositionMatrix )
        [ [ self object ] setTickMarkPosition:( [ [ sender cellAtRow:0 column:0  ] state ] ?
                    NSTickMarkBelow : NSTickMarkAbove ) ];
    else if ( sender == _sm_markerValuesOnly )
        [ [ self object ] setAllowsTickMarkValuesOnly:[ sender state ] ];
    else if ( sender == _sm_tag )
        [ [ self object ] setTag:[ sender intValue ] ];

    [ super ok:sender ];
}

- (void)revert:(id)sender
{
    [ _sm_valueLock setState:[ [ self object ] lockedSliders ] ];

    [ [ _sm_minMaxForm cellAtIndex:0 ] setDoubleValue:[ [ self object ] minValue ] ];
    [ [ _sm_minMaxForm cellAtIndex:1 ] setDoubleValue:[ [ self object ] maxValue ] ];

    [ [ _sm_loHiForm cellAtIndex:0 ] setDoubleValue:[ [ self object ] doubleLoValue ] ];
    [ [ _sm_loHiForm cellAtIndex:1 ] setDoubleValue:[ [ self object ] doubleHiValue ] ];

    [ [ _sm_optionsMatrix cellAtRow:0 column:0 ] setState:[ [ self object ] isContinuous ] ];
    [ [ _sm_optionsMatrix cellAtRow:1 column:0 ] setState:[ [ self object ] isEnabled ] ];
    [ [ _sm_optionsMatrix cellAtRow:2 column:0 ] setState:( [ [ self object ] controlSize ]
                == NSSmallControlSize ) ];

    [ _sm_markerNumOf setIntValue:[ [ self object ] numberOfTickMarks ] ];
    [ _sm_markerPositionMatrix selectCellAtRow:[ [ self object ] tickMarkPosition ] column:0 ];
    [ _sm_markerValuesOnly setState:[ [ self object ] allowsTickMarkValuesOnly ] ];
    [ _sm_tag setIntValue:[ [ self object ] tag ] ];

    [ super revert:sender ];
}

@end

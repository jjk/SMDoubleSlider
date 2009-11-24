//
//  SMDoubleSliderPalette.m
//  SMDoubleSliderPalette
//
//  Created by Kyle Hammond on Thu Jul 31 2003.
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
#import "SMDoubleSliderPalette.h"

@implementation SMDoubleSliderPalette

- (void)finishInstantiate
{
    [ _sm_horzNoTicks setMaxValue:100 ];
    [ _sm_horzTicks setMaxValue:100 ];
    [ _sm_vertNoTicks setMaxValue:100 ];
    [ _sm_vertTicks setMaxValue:100 ];

    [ _sm_horzNoTicks setDoubleHiValue:70 ];
    [ _sm_horzTicks setDoubleHiValue:70 ];
    [ _sm_vertNoTicks setDoubleHiValue:70 ];
    [ _sm_vertTicks setDoubleHiValue:70 ];

    [ _sm_horzNoTicks setDoubleLoValue:30 ];
    [ _sm_horzTicks setDoubleLoValue:30 ];
    [ _sm_vertNoTicks setDoubleLoValue:30 ];
    [ _sm_vertTicks setDoubleLoValue:30 ];

    [ _sm_horzNoTicks setContinuous:NO ];
    [ _sm_horzTicks setContinuous:NO ];
    [ _sm_vertNoTicks setContinuous:NO ];
    [ _sm_vertTicks setContinuous:NO ];

    [ _sm_horzTicks setNumberOfTickMarks:11 ];
    [ _sm_horzTicks setTickMarkPosition:NSTickMarkBelow ];
    [ _sm_horzTicks setAllowsTickMarkValuesOnly:YES ];
    [ _sm_vertTicks setNumberOfTickMarks:11 ];
    [ _sm_vertTicks setTickMarkPosition:NSTickMarkRight ];
    [ _sm_vertTicks setAllowsTickMarkValuesOnly:YES ];
}

@end

@implementation SMDoubleSlider (SMDoubleSliderInspector)

- (NSString *)inspectorClassName
{
    return @"SMDoubleSliderInspector";
}

/*
 * IB calls this method to determine if pressing alt will allow a control
 * to be converted into a matrix of cells.
 */
- (BOOL)allowsAltDragging
{
    return YES;
}

@end

@implementation SMDoubleSliderCell (SMDoubleSliderInspector)

- (NSString *)inspectorClassName
{
    return @"SMDoubleSliderInspector";
}

@end

//
//  SMSampleAppDelegate.m
//  SMDoubleSlider
//
//  Created by Kyle Hammond on Wed Aug 06 2003.
//SMDoubleSlider Copyright (c) 2003-2007, Snowmint Creative Solutions LLC http://www.snowmintcs.com/
//All rights reserved.
//
//Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//• Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//• Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//• Neither the name of Snowmint Creative Solutions LLC nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
//
//THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
#import "SMSampleAppDelegate.h"
#import "SMDoubleSlider.h"

@implementation SMSampleAppDelegate

- (void)awakeFromNib
{
    // Send some actions to myself to fill in the low/high value fields.
    [ self changedSlider:_sm_horzSlider ];
    [ self changedSlider:_sm_horzTicksSlider ];
    [ self changedSlider:_sm_vertSlider ];
    [ self changedSlider:_sm_vertTicksSlider ];
}

- (IBAction)changedSlider:(id)sender
{
    if ( sender == _sm_horzSlider )
    {
        [ _sm_horzMin setFloatValue:[ sender floatLoValue ] ];
        [ _sm_horzMax setFloatValue:[ sender floatHiValue ] ];
    }
    else if ( sender == _sm_horzTicksSlider )
    {
        [ _sm_horzTicksMin setFloatValue:[ sender floatLoValue ] ];
        [ _sm_horzTicksMax setFloatValue:[ sender floatHiValue ] ];
    }
    else if ( sender == _sm_vertSlider )
    {
        [ _sm_vertMin setFloatValue:[ sender floatLoValue ] ];
        [ _sm_vertMax setFloatValue:[ sender floatHiValue ] ];
    }
    else if ( sender == _sm_vertTicksSlider )
    {
        [ _sm_vertTicksMin setFloatValue:[ sender floatLoValue ] ];
        [ _sm_vertTicksMax setFloatValue:[ sender floatHiValue ] ];
    }
}

@end

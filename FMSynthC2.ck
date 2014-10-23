//
//  FMSynthC2.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class FMSynthC2 extends FMSynth
{
    modulator => SinOsc carrier2 => outlet;
    carrier.freq() * 8 => carrier2.freq;
    2 => carrier2.sync;
    
    public void c2sync(int mode)
    {
        mode => carrier.sync;
    }
    public void harmonic(float c2f)
    {
        carrier.freq() * c2f => carrier2.freq;
    }
    public void c2gain(float c2g)
    {
        c2g => carrier2.gain;
    }
}
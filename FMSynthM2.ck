//
//  FMSynthM2.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class FMSynthM2 extends FMSynth
{
    SinOsc modulator2 => carrier => outlet;
    carrier.freq() * 4 => modulator2.freq; 
    2 => modulator2.gain;
    
    public void m2freq(float m2f)
    {
        carrier.freq() * m2f => modulator2.freq;
    }
    public void m2gain(float m2g)
    {
        m2g * 1000 => modulator2.gain;
    }
}
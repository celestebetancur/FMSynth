//
//  FMSynth.ck
//  CHmUsiCK
//
//  Created by Esteban Betancur on 18/10/14.
//  Copyright (c) 2014 Esteban Betancur. All rights reserved.
//


public class FMSynth extends Chubgraph
{
    SinOsc modulator => SinOsc carrier => outlet;
    
    2 => carrier.sync;
    1000 => modulator.gain;
    110 => modulator.freq;

    public void sync(int mode)
    {
        mode => carrier.sync;
    }
    public void mfreq(float mf)
    {
        mf => modulator.freq;
    }
    public void mgain(float mg)
    {
        (mg*1000) => modulator.gain;
    }
    public void cfreq(float cf)
    {
        cf => carrier.freq;
    }
    public void cgain(float cg)
    {
        cg => carrier.gain;
    }
    public void ratio(float num, float den)
    {
        (num/den) => float mf;
        carrier.freq() * mf => modulator.freq;
    }
}

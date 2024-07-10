domain Units

/**
* This file contains definitions for all units of measurement
* system used throughout the PTDT 
*/

import './Constants'

export unit_family Time {
    unit ms:millisecond
    unit sec:second
    unit min:minute
    unit hr:hour
    unit d:day
    unit wk:week
    unit mth:month
    unit qtr:quarter
    unit yr:year

    conversion ms->sec: (val) => val / 1000
    conversion sec->min: (val) => val / 60
    conversion min->hr: (val) => val / 60
    conversion hr->d: (val) => val / 24
    conversion d->wk: (val) => val / 7
    conversion wk->mth: (val) => val / 4
    conversion mth->qtr: (val) => val / 3
    conversion mth->yr: (val) => val / 12

    conversion yr->mth: (val) => val * 12
}

export unit_family Temperature {
    unit degC:DegreeCelsius
    unit degF:DegreeFarenheit

    conversion degC->degF: (val) => ((9/5) * val) + 32
    conversion degF->degC: (val) => (5/9) * (val - 32)
}

export unit_family Voltage {
    unit V:Volt
    unit kV:kiloVolt
    
    conversion V->kV: (val) => val / 1000
    conversion kV->V: (val) => val * 1000
}

export unit_family Current {
    unit A:Ampere
    unit kA: kiloAmpere

    conversion A->kA: (val) => val / 1000
    conversion kA->A: (val) => val * 1000
}

export unit_family Power {
    unit VA:VoltAmpere
    unit kVA:kiloVoltAmpere
    unit MVA:MegaVoltAmpere

    conversion VA->kVA: (val) => val / 1000
    conversion kVA->MVA: (val) => val / 1000
    conversion VA->MVA: (val) => val->kVA->MVA
    conversion MVA->kVA: (val) => val * 1000
    conversion kVA->VA: (val) => val * 1000
    conversion MVA->VA: (val) => val->kVA->VA
}

export unit_family Mass {
    unit g:gram
    unit kg:kilogram
    unit ton:MetricTon

    conversion g->kg: (val) => val / 1000
    conversion kg->ton: (val) => val /1000
    conversion ton->kg: (val) => val * 1000
    conversion kg->g: (val) => val * 1000
}

export unit_family Volume {
    unit l:litre
    unit m3:cubicMetre

    conversion l->m3: (val) => val / 1000
    conversion m3->l: (val) => val * 1000
}

export unit_family Frequency {
    unit hz:Hertz
}

export unit_family Angle {
    unit deg:Degree
    unit rad:Radian

    conversion deg->rad: (val) => val * (PI / 180)
    conversion rad->deg: (val) => val * (180 / PI)
}

export unit_family Concentration {
    unit ppm:PartsPerMillion
    unit ppb:PartsPerBillion
    unit mlpl:millilitresPerLitre

    conversion ppm->mlpl: (val) => val
    conversion ppm->ppb: (val) => val * 1000
    conversion ppb->ppm: (val) => val / 1000
}

export unit_family Acidity {
    unit mKOHpg:MillilitresOfPotassiumHydroxidePerGram
}
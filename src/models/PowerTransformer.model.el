domain PowerTransformer

import './DissolvedGasAnalysis'
import './Units'
import './Manufacturer'

/**
* This is the main model describing the properties of
* a Power Transformer
*/
export model PowerTransformer {
    // Descriptors
    identifier: text
    manufacturer: Manufacturer
    yearOfManufacture: number
    manufacturerModel?: text
    serialNumber: text

    frequency: number_[Frequency]
    numberOfPhases: number
    connectionGroup: text

    liquidPreservationSystem: text
    liquidType: text

    powerRatings: PowerRating list
    voltageRatings: VoltageRating list
    currentRatings: CurrentRating list

    components: Component list

    // Condition Indicators
    oilAnalyses: DissolvedGasAnalysis list
}

export model Component {
    name: text
    manufacturer: Manufacturer
    weight: number_[Mass]
    volume: number_[Volume]
}

export model PowerRating {
    power: number_[Power]
    coolingStage: text
    windingRise: number_[Temperature]
    hotSpotRise: number_[Temperature]
    oilRise: number_[Temperature]
}

export model VoltageRating {
    side: text
    tap: number
    voltage: number_[Voltage]
}

export model CurrentRating {
    side: text
    tap: number
    current: number_[Current]
}
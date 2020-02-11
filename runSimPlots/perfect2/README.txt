// Truth t0 and secondary removal
physics.producers.driftDistReco.useTrueDigitT0 : true
// Remove secondaries
physics.producers.digitizer.promoteSecondaryToDigit : false
physics.producers.tracks.onlyPrimaryPositrons : true
// Make negative drift times positive
// physics.producers.digitizer.allowNegativeTimes : false // Maybe this shifts the t0?
// Set drift time resolution to zero
physics.producers.digitizer.driftTimeResolution : 0.00

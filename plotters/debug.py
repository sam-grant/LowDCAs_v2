# Format t0 plots, showing the effect of introducing a 28.65 ns t0 offset for garfield tracks

from ROOT import TFile, TCanvas, gStyle, TProfile, TLegend

# Grab files
goodFile = TFile.Open("../runSimPlots/simScanPlots2865.root")
badFile = TFile.Open("../runSimPlots/simScanPlots246.root")

# Grab 2D histograms
h1 = goodFile.Get("plots0/AllHits/t0ResidualVersusDCA")
h2 = badFile.Get("plots0/AllHits/t0ResidualVersusDCA")

p1 = h1.ProfileX()
p2 = h2.ProfileX()

c = TCanvas()
p1.Draw()
p2.Draw("same")
c.SaveAs("../images/debug.png")

# Take profiles
#FancyDrawOverlay(h1.ProfileX(), h2.ProfileX(), ";Measured DCA [#mum];True #minus reco t0 [ns]", "../images/t0ResidualVersusDCAProfiles" )


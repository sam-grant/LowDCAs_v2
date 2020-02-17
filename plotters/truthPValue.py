from ROOT import TFile, TCanvas, gStyle, TProfile, TLegend

def FancyDraw1D(hist1, title, fname): 

	c0 = TCanvas("","",800,600)

	#hist1.SetStats(0)

	hist1.SetTitle(title)
			
	hist1.GetXaxis().SetTitleSize(.04)
	hist1.GetYaxis().SetTitleSize(.04)
	hist1.GetXaxis().SetTitleOffset(1.1)
	hist1.GetYaxis().SetTitleOffset(1.1)
	hist1.GetXaxis().CenterTitle(1)
	hist1.GetYaxis().CenterTitle(1)
 	hist1.GetYaxis().SetMaxDigits(4)

	hist1.SetLineWidth(3)
	hist1.SetLineColor(1)	
	hist1.SetLineColor(1)

	# c0.SetLogy()

	hist1.Draw()

	# c0.SetGrid()
	
	c0.SaveAs(fname+".png")
	c0.SaveAs(fname+".pdf")

perfectFile = TFile.Open("../runSimPlots/perfect/simPlotsMerged0.root") # Truth, no DCA threshold
perfectHist = perfectFile.Get("nonePlusWrong/pValues")
# perfectHist = perfectFile.Get("pValues")

# FancyDraw1D(perfectHist, "Truth data, no wrong LR choices;p-values;Tracks","../images/truthDataPValuesNoLRWrong")
FancyDraw1D(perfectHist, "Created: 14:14;p-values;Tracks","../images/truthDataPValues")

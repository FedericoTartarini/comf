#' PMV based on Adaptive Thermal Heat Balance Framework of multiple Models
#' 
#' aliases athb ATHB calcATHBPmvModel1, calcATHBPmvModel2, calcATHBPmvModel3
#' @description \code{calcATHBpmv} calculates the PMV based on adaptive thermal heat balance framework 
#' @description based on the newest version (2022)
#' 
#' @usage calcATHBpmv(trm, ta, tr, vel, rh, met, coolingStrategyBuilding, 
#' buildingType)
#'
#' @param trm - Running mean outdoor temperature in [degree C]
#' @param ta - a numeric value presenting air temperature in [degree C]
#' @param tr - a numeric value presenting mean radiant temperature in [degree C]
#' @param vel - a numeric value presenting air velocity in [m/s]
#' @param rh - a numeric value presenting relative humidity [\%]
#' @param met - a numeric value presenting metabolic rate in [met]
#' @param coolingStrategyBuilding - the process in which the building was 
#' ventilated. Value can be among Mixed Mode','Naturally Ventilated' as a String 
#' @param buildingType - building type. Value can be among Multifamily housing, 
#' Office, Others, as a string
#'
#' @return \code{calcATHBpmv} an array of PMV values of different models adapted 
#' through the ATHB appoach 
#' 
#' @references 
#' Schweiker & Wagner (2015) <doi:10.1016/j.buildenv.2015.08.018>
#' Schweiker (2022) <doi:10.1111/ina.13018>
#' 
#' @author Code implemented in to R by Shaomi Rahman. Further contribution by Marcel Schweiker.
#' @seealso see also \code{\link{calcComfInd}}, \code{link{calcATHBpts}}, \code{link{calcATHBset}},
#' @seealso \code{link{calcATHBpmv2015}}, \code{link{calcATHBPmvModel1}}, 
#' \code{link{calcATHBPmvModel2}}, \code{link{calcATHBPmvModel3}} 
#' @export
#'
#' @examples calcATHBpmv(20, 25, 25, .1, 50, 1.1)

calcATHBpmv <- function(trm, ta, tr, vel, rh, met, coolingStrategyBuilding, 
                        buildingType){
  
  PTSVATHBpmv_model1 <- calcATHBpmvModel1(trm, ta, tr, vel, rh, met)
  PTSVATHBpmv_model2 <- calcATHBpmvModel2(trm, ta, tr, vel, rh, met)
  PTSVATHBpmv_model3 <- calcATHBpmvModel3(trm, ta, tr, vel, rh, met)
  PTSVATHBpmv_model4 <- calcATHBpmvModel4(trm, ta, tr, vel, rh, met, coolingStrategyBuilding)
  PTSVATHBpmv_model5 <- calcATHBpmvModel5(trm, ta, tr, vel, rh, met, buildingType)
  PTSVATHBpmv_model6 <- calcATHBpmvModel6(trm, ta, tr, vel, rh, met, coolingStrategyBuilding)
  c(PTSVATHBpmv_model1, PTSVATHBpmv_model2, PTSVATHBpmv_model3, PTSVATHBpmv_model4,
    PTSVATHBpmv_model5, PTSVATHBpmv_model6)
}

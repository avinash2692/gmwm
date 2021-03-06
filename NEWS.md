# gmwm 2.0.0

This is the second general release of the Generalized Method of Wavelet Moments (GMWM) R Package. Considerable amount of work has been done to improve the user experience across all disciplines. 

## Highlights

* IMU Data Object Improvements
* New time series modeling term: GM (Gauss-Markov)
* More flexible MODWT, DWT, and AVAR Wrappers
* Improved IMU Parameter Search Algorithm
* Faster Batch WVAR Processing
* Rewritten visual model comparison
* Auto-version check on package load

##  Time Series Processed Model Syntax

* New model term that enables users to specify a guass-markov process (GM).
  * The GM is a reparameterization of an AR1 process using the freqeuncy of the data.
* Note: The conversion to and fro GM is done outside the C++ backend. Internally, the term is treated as an AR1 with frequency of 1.

## Decomposition Methods

* New flexible R wrappers for
    * Discrete Wavelet Transform (DWT)
    * Maximal Overlap Discrete Wavelet Transform (MODWT)
    * Allan Variance (AVAR)
* Support is now available for taking up to a specific scale.
* DWT and MODWT now have built-in `brick.wall` support.
* New `brick.wall` R wrapper to later handle boundary coefficients. 

## Wavelet Variance

* Calculate the Wavelet Variance for DWT composition in addition to an MODWT decomposition.
* Change the level of decomposition for the WV.
* New batch data set processing function in C++

## Model Comparison

* Reimplemented `compare.models()` function that removes the large spaces between plots.
* Labels are now around the top and right of the plot.

## Data Objects

* `imu` and `lts` objects now have a frequency, unit, and name component.
* All data objects were rewritten so that data is placed first and foremost. 
   * Attributes of the data are now accessed via `attr(x,"name")`
* Smart printing has been enabled for data objects. No longer will console be flooded with text!
   * Objects print the first and last 10 observations. 
* `update.*` function
   * Added a means to update parameters of an object without recreating it.

## IMU

* New grid search algorithm for IMU parameters that relies upon dominance of the first few scales.
* Improved loading experience with the addition of `read.imu` that returns an R IMU object type.
* The `wvar.imu` function now calls a new batch wrapper that processes multiple signals quickly.
* Added ability to subset IMU without losing attributes. (Limited to pairs of data.)

## Package Load

* Auto-version check on package load
   * Connects to CRAN to see if a new package exists and alerts the user.
* More specific startup messages to help users access the resources of the package.

## External Data Package Install

* Established the [SMAC Group Data Repo](http://smac-group.com/datarepo)
* Rewrote install_imudata to make use of the data repo
* Removed `dl.file` and `install_` functions.

## Internal

* Added quick `create_imu()` and `create_wvar()` objects to avoid long checks.
* Added `ar1_to_gm()` and `gm_to_ar1()` to convert to and for the GM object.
* Added `is.*()` functions for gmwm-based objects to avoid constantly calling `inherit(x,"*")`.

## Bug Fixes

* `freq` now affects the `x`-axis.
* The transformation with `DR()` is no longer the identity. Instead, we opt to use a logarithmic approach.
   * In transform_data, DR now has the absolute value taken and then a log.
   * In untransform_data, DR now is exponentiated.
* Capitalized axis when displaying `imu` graphs.

## Known Bugs
* The `compare.wvar` does not work with type `wvar.imu`.


------------------------------------------------------------

# gmwm 1.0.0

This is the first general release of the Generalized Method of Wavelet Moments (GMWM) R package. The package is meant to act as a platform for using the GMWM estimator.

## Highlights

* High performing C++ routines to calculate wavelet variance, GMWM estimator, and more!
* Inference and Model Selection for the GMWM estimator,.
* Straightforward model specification of state-space model (or latent time series models) via natural inputs.
* Graphical features that enable the exploration of the Wavelet Variance and GMWM Estimation results.

## Generalized Method of Wavelet Moments (GMWM) 

* Efficient implementation of GMWM estimation techniques for ARMA and state-space models.
* Obtain results for time series with over two million observations in under 1.5 seconds!
* Effortlessly obtain initial starting values with a new grid search algorithm or use your own. 
* Switch between different weighting matrices (e.g. `approx`,`bootstrap`,`asymptotic`)

## Decomposition Methods

* The decomposition of process is available in three different C++ functions.
    * Discrete Wavelet Transform (DWT)
    * Maximal Overlap Discrete Wavelet Transform (MODWT)
    * Allan Variance (AVAR)
* Support for the following Daubechies wavelets:
    * d2 - Haar filter
* Extendable filter collection
    * Support a pull request to add a new filter! 

## Wavelet Variance

* Calculate the Wavelet Variance for a set of data underneath the Haar wavelet filter with either robust or classical techniques.
* Visualize the Wavelet Variance with `plot(wvar(x))`
* Compare the results of wavelet variances using `compare.wvar()`

## Time Series Processed Model Syntax

* New model syntax that enables users to quickly specify models via `ts.model` S3 object.
* Specify models with initial starting parameters or let the built in grid search algorithm guess initial parameter values.
    * `AR1()` creates an AR1 modeling component with the program set to guess initial values.
    * `AR1(phi = .3, sigma2 = 1)` creates an AR1 modeling component with user supplied initial values.
* Support exists for:
    * Autoregressive order 1 (`AR1(phi,sigma2)`)
    * Normal White Noise (`WN(sigma2)`)
    * Random Walk (`RW(sigma2)`)
    * Quantization Noise (`QN(q2)`)
    * Moving Averages of order Q (`MA(q)`)
    * Autoregressive of order P (`AR(p)`)
    * Autoregressive - Moving Averages of orders P,Q (`ARMA(p,q,sigma2)`)
* Chain different processes together through the use of the plus operator
    * E.g. `mod = AR1() + WN()` or `mod = AR1(phi = .9, sigma2 = 1) + WN(sigma2 = .1)
* Repeat processes through the use of the times operator
    * E.g. `mod = 3*AR1()`

## Process Generation

* Computationally sound algorithms for generating:
   * Autoregressive - moving averages (`ARMA`)
   * Autoregressive processes of Order 1, P (`AR1` or `AR`)
   * Moving Averages of Order Q (`MA`)
   * Normal White Noise (`WN`)
   * Random Walk (`RW`)
   * Quantization Noise (`QN`)
* Quick generation of latent processes via `gen.gts(model, N)`

## Latent Time Series Demonstration

* See how different time series processes combine together via `demo.lts()`.


## Support
Primary support for this project was made possible by the Department of Statistics at the University of Illinois at Urbana-Champaign (UIUC). Furthermore, the contributions of undergraduate researcher Wenchao Yang for improving the visualization systems was supported, in part, by a grant from the Office of Undergraduate Research at UIUC. The project was mentored by Prof. Stephane Guerrier. 

## Acknowledgement

We would like to thank the following individuals for their contributions and advice in the development of the GMWM methodology:

* Prof. Maria-Pia Victoria-Feser 
* Dr. Jan Skaloud
* Dr. Yannick Stebler

Furthermore, we are also greatful to Dr. Jan Skaloud and Philipp Clausen of Geodetic Engineering Laboratory (TOPO), Swiss Federal Institute of Technology Lausanne (EPFL), topo.epfl.ch, Tel:+41(0)21 693 27 55 for providing data, which motivated the research and development of this package. 

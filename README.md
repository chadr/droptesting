# droptest

An R package for simulating LOX/GOX drop testing.

### Installation:

To get the current development version from github:

```R
# install.packages("devtools")
devtools::install_github("chadr/droptest")
```

### Background information:

Drop testing -- sometimes called impact testing -- is used to evaluate if a
material will interact with liquid (LOX) or gaseous oxygen (GOX). The material
is exposed to the LOX/GOX and an impactor is dropped onto the sample. Each drop
is a bernoulli trial where a reaction is a failure and a non-reaction is a
success. The specified number of trials -- until failure -- completes one test.

While fundamentally a binomial process, drop testing -- performed by the
military and NASA -- yields results that are difficult to analyze. Numerous tech
briefs and standards have attempted to address the problem (see below for more
information). Testing stops as soon as a failure condition is reached. If the
failure condition occurs on drop one or two -- depending on the failure criteria
-- then the test returns only one or two result values. Alternatively, if
a material passes, or if the failure condition occurs on the last observation,
then the test returns as many result values as observations.

Simulation can be used to examine the behavior of this test procedure.

Inspired by NASA Technical Note "Computer Simulation of Threshold Sensitivity
Determinations" (NASA-TN-D-7663). 1974.
https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19750004618.pdf

### Definitions:

* **Trial:** A simulated bernoulli trial that represents one drop of the impactor
  onto a material sample. q is the probability of a failure. A reaction is
  recorded as a failure. p is the probability of success. A non-reaction is
  recorded as a success. Where ```p = 1 - q```. See
  https://en.wikipedia.org/wiki/Bernoulli_trial
 
* **Drop Test:** A collection of simulated trials generated with equal parameters
  (q, number of trials, failure criteria, etc). When the failure criteria is
  reached the test is immediately terminated and no more trials are completed.
  The sooner a test reaches the failure criteria the less total trials
  for that particular test. A test that consists of no failures will always
  contain the maximum number of trials as defined in the function parameters.
 
* **Test Series:** A collection of simulated drop tests. A group number can be
  attached to the drop tests in a test series (optional).
 
*  **Groups:** A collection of multiple simulated test series. Each batch of test
  series are identified with a group number. Within each group test parameters
  will be identical.
 
* **Trial Deviation:** The average distance from q for the total percent of
  reactions (failures).

### Applicable Standards:

Pass/Fail criteria and number of observations required have been defined in the
following standards:

* NASA-STD-6001B
(https://spaceflightsystems.grc.nasa.gov/SpaceDOC_II/Standards/documents/NASA-STD-6001B-1.pdf)
* ASTM D2512 (https://www.astm.org/Standards/D2512.htm)
* ASTM G86-17 (https://www.astm.org/Standards/G86.htm)

**Note:** This package is not constrained by any standard. Arbitrary test 
criteria and observations can be specified for maximum flexibility.

### For more information on drop testing: 
* "An Instrument for Determination of Impact Sensitivity of Materials in Contact with 
Liquid Oxygen" (AB6002-EB). 1960. 
https://www.astm.org/DIGITAL_LIBRARY/STP/MMR/PAGES/AB6002-EB.htm

* "Reproducibility of Liquid Oxygen Impact Test Results" (NASA Technical Note D-7905). 1970.
https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19750014413.pdf

* "Lox/Gox Mechanical Impact Tester Assessment" (TM-74106). 1980.
https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19800006920.pdf
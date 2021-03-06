%module cerestim
 %{
 #define SWIG_FILE_WITH_INIT
 /* Includes the header in the wrapper code */
 #include "BStimulator.h"
 %}
 #define STATIC_BSTIM_LINK
 %include "windows.i"
 %include "std_vector.i"
 %include "typemaps.i"
 %template() std::vector<UINT32>; 
 %apply std::vector<UINT32> *OUTPUT { std::vector<UINT32> & device_serial_nums };
 //%apply BVersion *OUTPUT { BVersion * output };

 /* Parse the header file to generate wrappers */
 %include "BStimulator.h"


COMPONENT_ADD_INCLUDEDIRS += core/inc dsp/inc dsp/inc/dsp dsp/privateInc nn/inc

## This component's src
COMPONENT_SRCDIRS += dsp/src/BasicMathFunctions	\
                        dsp/src/BayesFunctions		\
                        dsp/src/CommonTables		\
                        dsp/src/ComplexMathFunctions \
                        dsp/src/ControllerFunctions \
                        dsp/src/DistanceFunctions \
                        dsp/src/FastMathFunctions \
                        dsp/src/FilteringFunctions \
                        dsp/src/InterpolationFunctions \
                        dsp/src/MatrixFunctions \
                        dsp/src/QuaternionMathFunctions \
                        dsp/src/StatisticsFunctions \
                        dsp/src/SupportFunctions \
                        dsp/src/SVMFunctions \
                        dsp/src/TransformFunctions \
                        nn/src/ActivationFunctions \
                        nn/src/BasicMathFunctions \
                        nn/src/ConcatenationFunctions \
                        nn/src/ConvolutionFunctions \
                        nn/src/FullyConnectedFunctions \
                        nn/src/NNSupportFunctions \
                        nn/src/PoolingFunctions \
                        nn/src/ReshapeFunctions \
                        nn/src/SoftmaxFunctions \
                        nn/src/SVDFunctions 

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

CFLAGS += -D__RISCV_FEATURE_MVE=0 
CFLAGS += -Wno-incompatible-pointer-types  \
           	-Wno-parentheses


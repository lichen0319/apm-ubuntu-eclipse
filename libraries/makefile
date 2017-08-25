-include Make.defs

CSRCS   =
CPPSRCS =

VPATH   =
DEPPATH = --dep-path .


include AP_Common/Make.defs
include AP_HAL/Make.defs
include AP_HAL_LINUX/Make.defs
include AP_Scheduler/Make.defs
include AP_Math/Make.defs

COBJS   = $(CSRCS:.c=.o)
CPPOBJS = $(CPPSRCS:.cpp=.o)

SRCS    = $(CPPSRCS) $(CSRCS)
OBJS    = $(CPPOBJS) $(COBJS)


TARGET := AP_HAL/examples/Printf/Printf


LIB = libapm.a

$(TARGET): $(TARGET).cpp $(LIB)
	$(CXX) $(CXXFLAGS) $^ $(LIBS) -o $@



$(LIB): $(OBJS)
	$(call ARCHIVE, $@, $(OBJS))

$(COBJS): %.o: %.c
	$(call COMPILE, $<, $@)


$(CPPOBJS): %.o: %.cpp
	$(call COMPILEXX, $<, $@)


clean:
	rm *.o *.a -rf
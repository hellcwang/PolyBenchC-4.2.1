FILE=$(wildcard *.c)
TF=tile.config
TF_VAR=`cat $(TF)`
PPCG = gcc
PPCG_OPT = -O3
PPCG_INCLUDE = .

ifndef PPCG
$(error PPCG (ppcg program path) is not set)
endif

ifndef PPCG_OPT
$(error PPCG_OPT (options) is not set, at least provide the --target=cuda/opencl/c)
endif

ifndef PPCG_INCLUDE
$(error PPCG_INCLUDE (include path) is not set, please provide the path to polybench utilities)
endif

ifndef DATASET
DATASET=LARGE_DATASET
endif

# SIZE_OPT=--sizes="{  kernel[i] -> tile$(TF_VAR); }"
# SIZE_OPT=--sizes="{  kernel[i] -> tile[1,2,128]; kernel[i] -> block[1,2,128] }"
# SIZE_OPT--sizes="{ kernel[i] -> tile[3,3,32];  }"

OPTIONS=$(PPCG_OPT)
FILE	= polybench.c

all:
	$(PPCG) $(FILE) $(OPTIONS) -I$(PPCG_INCLUDE) -DEXTRALARGE_DATASET -DDATA_TYPE_IS_FLOAT -DPOLYBENCH_TIME -c

clean:
	@rm *.schedule *.schedule_node *.union_map *.map *.json *.cu *.hu

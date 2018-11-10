########################################################################
#
# Makefile for dogs-cats pre-built DL model
#
########################################################################

# List the files to be included in the .mlm package.

MODEL_FILES = 			\
	configure.sh		\
	data.R                  \
        train.R			\
	demo.R 			\
	print.R			\
	display.R		\
	score.R			\
	configure.R		\
	showImg.js              \
	dogs-cats-vgg16-history.RData	\
	dogs-cats-vgg16-model.hdf5	\
	dogs-cats-vgg16-model-weights.hdf5 \
        history.png             \
	data                    \
	README.txt		\
	DESCRIPTION.yaml

# Include standard Makefile templates.

include ../mlhub.mk
include ../git.mk
include ../pandoc.mk

$(MODEL).hdf5: train.R
	Rscript $<

clean::
	rm -rf README.txt output

realclean:: clean
	rm -rf dogs-cats*.mlm

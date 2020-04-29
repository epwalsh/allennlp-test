.PHONY : greetings-copynet
greetings-copynet :
	@rm -rf /tmp/greetings_copynet/
	# @CUDA_LAUNCH_BLOCKING=1 allennlp train configs/greetings_copynet.json \
	#     -s /tmp/greetings_copynet/ \
	#     --include-package allennlp_models
	@allennlp train configs/greetings_copynet.json \
		-s /tmp/greetings_copynet/ \
		--include-package allennlp_models

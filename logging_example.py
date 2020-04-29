import logging
import os
import sys

from allennlp.common.util import prepare_global_logging


logger = logging.getLogger()


os.makedirs("/tmp/logging_example", exist_ok=True)
prepare_global_logging("/tmp/logging_example", file_friendly_logging=True)

logger.info("Hello there! This should be in stdout")
logger.error("This is an error message")

sys.stderr.write("This is also an error message\n")
sys.stderr.flush()

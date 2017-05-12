# sound-rnn-fixup
Small set of fixup scripts for [sound-rnn](https://github.com/johnglover/sound-rnn).

When a model is trained using GPU acceleration (CUDA), the resulting data file holds references to CUDA tensor structures. Attempts to generate samples from this model will fail with `unknown Torch class <torch.CudaTensor>`. This set of scripts will convert the model data to use "normal" tensors to allow sample generation.

NOTE: this is only a temporary fix and will not be maintained.

# Files

* `bin2ascii.lua` Converts a binary-encoded model file to an ASCII-encoded one. Uses `stdin` and `stdout`.
* `ascii2bin.lua` Reverse of above.
* `cuda-fixup.py` Core fixup script. Only works on ASCII-encoded files. Also uses `stdin` and `stdout`.
* `cuda-fixup.sh` Main wrapper to convert to ASCII before applying fixup.

# Usage

`./cuda-fixup.sh <input-file-name> <output-file-name>`

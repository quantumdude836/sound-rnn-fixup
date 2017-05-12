local torch = require 'torch'
require 'nn'
require 'nngraph'
require 'mdn'

pcall(require, 'cutorch')


local data = torch.load('/dev/stdin')
torch.save('/dev/stdout', data, 'ascii')

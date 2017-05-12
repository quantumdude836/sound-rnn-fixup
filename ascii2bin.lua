local torch = require 'torch'
require 'nn'
require 'nngraph'
require 'mdn'

pcall(require, 'cutorch')


local data = torch.load('/dev/stdin', 'ascii')
torch.save('/dev/stdout', data)

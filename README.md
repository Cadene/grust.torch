# GRUST for Torch7

Gated Recurrent Units architecture for Skip Thoughts vectors has been developped in the frame of implementing the pretrained [skip-thoughts models in Torch7](https://github.com/Cadene/skip-thoughts.torch).

The implementation of GRUST corresponds to the following algorithm:
```
z[t] = σ(W[x->z]x[t] + W[s->z]s[t−1] + b[1->z])            (1)
r[t] = σ(W[x->r]x[t] + W[s->r]s[t−1] + b[1->r])            (2)
h[t] = tanh(W[x->h]x[t] + r[t] .* W[hr->c](s[t−1]) + b[1->h])  (3)
s[t] = (1-z[t])h[t] + z[t]s[t-1]                           (4)
```
(with `.*` the element wise product)
Note: It is also the same implementation of GRU from pytorch.

Whereas, the implementation of GRU from the [rnn](https://github.com/Element-Research/rnn#rnn.GRU) package corresponds to the following algorithm:
```
z[t] = σ(W[x->z]x[t] + W[s->z]s[t−1] + b[1->z])            (1)
r[t] = σ(W[x->r]x[t] + W[s->r]s[t−1] + b[1->r])            (2)
h[t] = tanh(W[x->h]x[t] + W[hr->c](s[t−1] .* r[t]) + b[1->h])  (3)
s[t] = (1-z[t])h[t] + z[t]s[t-1]                           (4)
```
(with `.*` the element wise product)


### Installation

```
$ git clone https://github.com/Cadene/grust.torch
$ cd grust.torch
$ luarocks make rocks/grust-scm-1.rockspec
```

### How to

```lua 
require 'nn'
require 'rnn'
require 'GRUST'
m = nn.GRUST(620, 2400)
batch=20
print(m:forward(torch.ones(batch, 620)):size())
```

### Licence

MIT License
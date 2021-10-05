//-----------------------------------------------------------------------------
// Copyright 2021 Andrea Miele
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//-----------------------------------------------------------------------------

// demux.sv
// generic demultiplexer

module demux
#(parameter WIDTH = 2, parameter SIZE = 1, localparam SEL_WIDTH = $size(WIDTH))
(
	input logic [SIZE - 1 : 0] in,
	input logic [SEL_WIDTH - 1 : 0] sel,
	output logic [SIZE - 1 : 0] out [WIDTH - 1 : 0]
);

always_comb
begin: demuxComb
	for(int i = 0; i < SIZE; i++)
	begin: demuxFor
		out[i][sel] = in[i];
	end
end

endmodule

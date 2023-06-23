function rom_config(this_block)

  % Revision History:
  %
  %   13-Dec-2022  (21:01 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     C:\Users\HP\OneDrive\Desktop\vlsi\black_box\32bitrom\rom.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('rom');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

  this_block.addSimulinkInport('clk');
  this_block.addSimulinkInport('en');
  this_block.addSimulinkInport('addres');

  this_block.addSimulinkOutport('data_out');

  data_out_port = this_block.port('data_out');
  data_out_port.setType('UFix_8_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('clk').width ~= 1);
      this_block.setError('Input data type for port "clk" must have width=1.');
    end

    this_block.port('clk').useHDLVector(false);

    if (this_block.port('en').width ~= 1);
      this_block.setError('Input data type for port "en" must have width=1.');
    end

    this_block.port('en').useHDLVector(false);

    if (this_block.port('addres').width ~= 3);
      this_block.setError('Input data type for port "addres" must have width=3.');
    end

  end  % if(inputTypesKnown)
  % -----------------------------

  % System Generator found no apparent clock signals in the HDL, assuming combinational logic.
  % -----------------------------
   if (this_block.inputRatesKnown)
     inputRates = this_block.inputRates; 
     uniqueInputRates = unique(inputRates); 
     outputRate = uniqueInputRates(1);
     for i = 2:length(uniqueInputRates)
       if (uniqueInputRates(i) ~= Inf)
         outputRate = gcd(outputRate,uniqueInputRates(i));
       end
     end  % for(i)
     for i = 1:this_block.numSimulinkOutports 
       this_block.outport(i).setRate(outputRate); 
     end  % for(i)
   end  % if(inputRatesKnown)
  % -----------------------------

    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('rom.v');

return;

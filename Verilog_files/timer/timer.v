module timer(
	input CLK,
	input switch_clear,
	input switch_add,
	input switch_subtract,
	input switch_start,
	output [3:0] DIGIT,
	output [7:0] SEG,
	output BUZZER
    );

wire s_up_clear, s_up_add, s_up_subtract, s_up_start;
localparam SETTING = 0, RUNNING = 1, BEEPING = 2;
reg alarm_on = 0;
reg [3:0] sec = 0;
reg [3:0] ten_sec = 0;
reg [3:0] min = 1;
reg [3:0] min_stored; 
reg [3:0] unused = 4'd10;
reg [1:0] state = SETTING;
reg [25:0] prescaler = 0;
 
debouncer d1(.CLK(CLK), .switch_input(switch_clear), .trans_up(s_up_clear));
debouncer d2(.CLK(CLK), .switch_input(switch_add), .trans_up(s_up_add));
debouncer d3(.CLK(CLK), .switch_input(switch_subtract), .trans_up(s_up_subtract));
debouncer d4(.CLK(CLK), .switch_input(switch_start), .trans_up(s_up_start)); 
display_7_seg display(.CLK(CLK), .units(sec), .tens(ten_sec), .hundreds(min), .thousands(unused), .SEG(SEG), .DIGIT(DIGIT));
alarm a1(.CLK(CLK), .enable(alarm_on), .BUZZER(BUZZER));

always @(posedge CLK) begin
	case(state) 
		SETTING: begin
			handle_settings();
			if (s_up_start) begin
				min_stored <= min;
				state <= RUNNING;
			end
		end
		RUNNING: begin
			decrement_time();
			if (s_up_clear) begin
				reset_alarm();
				state <= SETTING;
			end
			if (s_up_start) begin
				state <= SETTING;
			end
			if ((sec == 0) & (ten_sec == 0) & (min == 0))
      begin
				alarm_on <= 1;
				state <= BEEPING;
			end
		end
		
		BEEPING: begin
			if (s_up_clear) begin
				alarm_on <= 0;
				reset_alarm();
				state <= SETTING;
			end
		end
	endcase
end

task handle_settings; begin
	if (s_up_subtract) begin
		min <= min - 1;
		if (min == 1) begin
			min <= 9;
		end
	end
	if (s_up_add) begin
		min <= 1 + min;
		if (min == 9) begin
			min <= 1;
		end
	end
end
endtask

task decrement_time; begin
	prescaler <= prescaler + 1;
	if (prescaler == 26'd49999999) begin
		prescaler <= 0;
		sec <= sec - 1;
		if (sec < 1) begin
			sec <= 9;
			ten_sec <= ten_sec - 1;
			if(ten_sec < 1) begin
				ten_sec <= 5;
				min <= min - 1;
			end
		end
	end
end
endtask


/*
task decrement_time;
begin
  prescaler <= prescaler + 1;
  if (prescaler == 26'd49999999) // 50 MHz to 1Hz
  begin
    prescaler <= 0;
    sec <= sec - 1;
    if (sec < 1)
    begin
      sec <= 9;
      ten_sec <= ten_sec - 1;
      if (ten_sec < 1)
      begin
        ten_sec <= 5;
        min <= min - 1;
      end
    end
  end
end
endtask
*/

task reset_alarm; begin
	sec <= 0;
	ten_sec <= 0;
	min <= min_stored;
end
endtask
endmodule

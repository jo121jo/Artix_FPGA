`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: A7_LED
// Description: DIP switch controls lower 4 LEDs, button press cycles number of
// blinking LEDs on upper 4 bits from 1 → 2 → 3 → 4 → 1 (cyclic).
//////////////////////////////////////////////////////////////////////////////////

module A7_LED (
    input wire CLK1,
    input wire [3:0] sw_in,      // Push buttons
    input wire [7:0] dip_sw,     // DIP switches
    output reg [7:0] LED         // LEDs
);

    reg [3:0] led_enable = 4'b1111;       // LED0-LED3 blinking enabled initially
    reg [3:0] sw_prev = 0;
    wire [3:0] sw_edge;
    reg [27:0] blink_counter = 0;
    reg blink_state = 0;

    integer i;

    // Clock divider for blinking
    always @(posedge CLK1) begin
        if (blink_counter >= 50_000_000) begin  // ~0.5s for 100MHz
            blink_counter <= 0;
            blink_state <= ~blink_state;
        end else begin
            blink_counter <= blink_counter + 1;
        end
    end

    // Edge detection: detect push button press (rising edge)
    assign sw_edge = sw_in & ~sw_prev;

    always @(posedge CLK1) begin
        sw_prev <= sw_in;

        for (i = 0; i < 4; i = i + 1) begin
            if (sw_edge[i]) begin
                led_enable[i] <= ~led_enable[i];  // Toggle LED enable
            end
        end
    end

    // LED control logic
    always @(posedge CLK1) begin
        for (i = 0; i < 4; i = i + 1) begin
            LED[i] <= (led_enable[i]) ? blink_state : 1'b0;
        end

        for (i = 4; i < 8; i = i + 1) begin
            LED[i] <= dip_sw[i];
        end
    end

endmodule

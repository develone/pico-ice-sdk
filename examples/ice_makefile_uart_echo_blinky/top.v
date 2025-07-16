module top (
    input CLK,
    input UART_RX,
    output UART_TX,
    output LED_R,
    output LED_G,
    output LED_B
);
    assign UART_TX = UART_RX;
      localparam N = 22;

  reg [N:0] counter;

  always @(posedge CLK) begin
    counter <= counter + 1;
  end

  assign LED_R = counter[N]; 
  assign LED_G = 1'b1;
  assign LED_B = 1'b1;

endmodule

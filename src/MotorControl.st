// Motor Control Logic
FUNCTION_BLOCK MotorControl
VAR_INPUT
    StartButton: BOOL; // Input for start button
    StopButton: BOOL;  // Input for stop button
END_VAR

VAR_OUTPUT
    MotorRunning: BOOL; // Output to motor control
END_VAR

// Main program logic
IF StartButton AND NOT MotorRunning THEN
    MotorRunning := TRUE;
ELSIF StopButton THEN
    MotorRunning := FALSE;
END_IF;

END_FUNCTION_BLOCK

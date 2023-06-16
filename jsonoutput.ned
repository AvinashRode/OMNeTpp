// Generated from input.json
// package network

simple Node {
    parameters:
        @display("i=device/server");
        int id;
        bool is_router;
        bool True = true;
        bool False = false;
    gates:
       input in[];
       output out[];
}

simple Job {
    parameters:
        double wcet_fullspeed;
        int mcet;
        int deadline;
        int eager_value;
        int suppressor;
        int accelerator;
        int loadsuppressor;
        int offeraccelerator;
        int offerrate;
    gates:
       input in[];
       output out[];
}

network Platform {
    parameters:
        @display("bgb=800,500");
    submodules:
        Node_0:Node { id = 0; is_router = True; };
        Node_1:Node { id = 1; is_router = False; };
        Node_2:Node { id = 2; is_router = False; };
        Node_3:Node { id = 3; is_router = True; };
        Node_4:Node { id = 4; is_router = True; };
        Node_5:Node { id = 5; is_router = True; };
        Node_6:Node { id = 6; is_router = False; };
        Node_7:Node { id = 7; is_router = False; };
        Node_8:Node { id = 8; is_router = True; };
        Node_9:Node { id = 9; is_router = True; };
        Node_10:Node { id = 10; is_router = True; };
        Node_11:Node { id = 11; is_router = True; };
        Node_12:Node { id = 12; is_router = True; };
        Node_13:Node { id = 13; is_router = False; };
        Node_14:Node { id = 14; is_router = False; };
        Node_15:Node { id = 15; is_router = True; };
        Node_16:Node { id = 16; is_router = True; };
        Node_17:Node { id = 17; is_router = True; };
        Node_18:Node { id = 18; is_router = False; };
        Node_19:Node { id = 19; is_router = False; };
    connections:
        Node_0.out++-->Node_1.in++;
        Node_0.out++-->Node_2.in++;
        Node_0.out++-->Node_3.in++;
        Node_0.out++-->Node_8.in++;
        Node_3.out++-->Node_4.in++;
        Node_3.out++-->Node_9.in++;
        Node_4.out++-->Node_5.in++;
        Node_4.out++-->Node_10.in++;
        Node_5.out++-->Node_6.in++;
        Node_5.out++-->Node_7.in++;
        Node_5.out++-->Node_11.in++;
        Node_8.out++-->Node_9.in++;
        Node_8.out++-->Node_12.in++;
        Node_9.out++-->Node_10.in++;
        Node_9.out++-->Node_15.in++;
        Node_10.out++-->Node_11.in++;
        Node_10.out++-->Node_16.in++;
        Node_11.out++-->Node_17.in++;
        Node_12.out++-->Node_13.in++;
        Node_12.out++-->Node_14.in++;
        Node_12.out++-->Node_15.in++;
        Node_15.out++-->Node_16.in++;
        Node_16.out++-->Node_17.in++;
        Node_17.out++-->Node_18.in++;
        Node_17.out++-->Node_19.in++;
}

network Application {
    parameters:
        @display("bgb=600,300");
    submodules:
        Job_0: Job {
                wcet_fullspeed = 5.94308;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_1: Job {
                wcet_fullspeed = 5.399;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_2: Job {
                wcet_fullspeed = 7.33733;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_3: Job {
                wcet_fullspeed = 9.5109;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_4: Job {
                wcet_fullspeed = 9.51931;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_5: Job {
                wcet_fullspeed = 9.40394;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_6: Job {
                wcet_fullspeed = 5.50727;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_7: Job {
                wcet_fullspeed = 9.76764;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_8: Job {
                wcet_fullspeed = 5.23667;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_9: Job {
                wcet_fullspeed = 8.41658;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_10: Job {
                wcet_fullspeed = 8.0713;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_11: Job {
                wcet_fullspeed = 6.72402;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_12: Job {
                wcet_fullspeed = 4.07214;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_13: Job {
                wcet_fullspeed = 6.31145;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_14: Job {
                wcet_fullspeed = 5.22352;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_15: Job {
                wcet_fullspeed = 9.69661;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_16: Job {
                wcet_fullspeed = 5.57378;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_17: Job {
                wcet_fullspeed = 9.36326;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_18: Job {
                wcet_fullspeed = 3.70323;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_19: Job {
                wcet_fullspeed = 8.96898;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_20: Job {
                wcet_fullspeed = 8.38868;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
        Job_21: Job {
                wcet_fullspeed = 9.67994;
                mcet = 10000;
                deadline = 10000;
                eager_value = 5;
                suppressor = 40;
                accelerator = 3;
                loadsuppressor = 1;
                offeraccelerator = 0;
                offerrate = 10;
        };
    connections:
        Job_1.out++-->Job_0.in++;
        Job_2.out++-->Job_0.in++;
        Job_4.out++-->Job_3.in++;
        Job_5.out++-->Job_3.in++;
        Job_5.out++-->Job_4.in++;
        Job_6.out++-->Job_0.in++;
        Job_6.out++-->Job_3.in++;
        Job_6.out++-->Job_4.in++;
        Job_6.out++-->Job_5.in++;
        Job_7.out++-->Job_3.in++;
        Job_7.out++-->Job_4.in++;
        Job_7.out++-->Job_5.in++;
        Job_7.out++-->Job_6.in++;
        Job_8.out++-->Job_1.in++;
        Job_8.out++-->Job_2.in++;
        Job_8.out++-->Job_4.in++;
        Job_9.out++-->Job_1.in++;
        Job_10.out++-->Job_0.in++;
        Job_10.out++-->Job_1.in++;
        Job_10.out++-->Job_2.in++;
        Job_10.out++-->Job_4.in++;
        Job_10.out++-->Job_7.in++;
        Job_11.out++-->Job_1.in++;
        Job_11.out++-->Job_2.in++;
        Job_12.out++-->Job_7.in++;
        Job_12.out++-->Job_10.in++;
        Job_13.out++-->Job_9.in++;
        Job_14.out++-->Job_0.in++;
        Job_14.out++-->Job_1.in++;
        Job_14.out++-->Job_2.in++;
        Job_14.out++-->Job_3.in++;
        Job_14.out++-->Job_8.in++;
        Job_14.out++-->Job_11.in++;
        Job_15.out++-->Job_2.in++;
        Job_16.out++-->Job_13.in++;
        Job_17.out++-->Job_8.in++;
        Job_18.out++-->Job_13.in++;
        Job_18.out++-->Job_16.in++;
        Job_19.out++-->Job_5.in++;
        Job_20.out++-->Job_9.in++;
        Job_21.out++-->Job_5.in++;
        Job_21.out++-->Job_19.in++;
}
#include<omnetpp.h>
#include<string.h>
#include"MyMsg_m.h"
using namespace omnetpp;

class Job : public cSimpleModule{
protected:
    virtual MyMsg* generateMsg(const char* name,int id,float period);
    virtual void initialize() override;
    virtual void handleMessage(cMessage* msg) override;

};
Define_Module(Job);
MyMsg* Job::generateMsg(const char* name,int id,float period){
    MyMsg* msg=new MyMsg("msg");
    msg->setGateId(id);
    msg->setPeriod(period);
    return msg;
}
void Job::initialize(){
    if (strcmp("Job_1",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_2",getName())==0){
        MyMsg* msg=generateMsg("Msg",0,30.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_4",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_5",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        MyMsg* msg2=generateMsg("Msg_30",1,30.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
    }
    else if(strcmp("Job_6",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        MyMsg* msg2=generateMsg("Msg_10",1,10.0);
        MyMsg* msg3=generateMsg("Msg_30",2,30.0);
        MyMsg* msg4=generateMsg("Msg_50",3,50.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
        scheduleAfter(0.0,msg3);
        scheduleAfter(0.0,msg4);
    }
    else if(strcmp("Job_7",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        MyMsg* msg2=generateMsg("Msg_30",1,30.0);
        MyMsg* msg3=generateMsg("Msg_50",2,50.0);
        MyMsg* msg4=generateMsg("Msg_10",3,10.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
        scheduleAfter(0.0,msg3);
        scheduleAfter(0.0,msg4);
    }
    else if(strcmp("Job_8",getName())==0){
        MyMsg* msg=generateMsg("Msg_30",0,30.0);
        MyMsg* msg2=generateMsg("Msg_50",1,50.0);
        MyMsg* msg3=generateMsg("Msg_10",2,10.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
        scheduleAfter(0.0,msg3);
    }
    else if(strcmp("Job_9",getName())==0){
        MyMsg* msg=generateMsg("Msg_30",0,30);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_10",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        MyMsg* msg2=generateMsg("Msg_10",1,10.0);
        MyMsg* msg3=generateMsg("Msg_30",2,30.0);
        MyMsg* msg4=generateMsg("Msg_50",3,50.0);
        MyMsg* msg5=generateMsg("Msg_10",4,10.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
        scheduleAfter(0.0,msg3);
        scheduleAfter(0.0,msg4);
        scheduleAfter(0.0,msg5);
    }
    else if(strcmp("Job_11",getName())==0){
        MyMsg* msg=generateMsg("Msg_30",0,30.0);
        MyMsg* msg1=generateMsg("Msg_50",1,50.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg1);
    }
    else if(strcmp("Job_12",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        MyMsg* msg1=generateMsg("Msg_30",1,30.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg1);
    }
    else if(strcmp("Job_13",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_14",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        MyMsg* msg2=generateMsg("Msg_30",1,30.0);
        MyMsg* msg3=generateMsg("Msg_50",2,50.0);
        MyMsg* msg4=generateMsg("Msg_10",3,10.0);
        MyMsg* msg5=generateMsg("Msg_30",4,30.0);
        MyMsg* msg6=generateMsg("Msg_50",5,50.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg2);
        scheduleAfter(0.0,msg3);
        scheduleAfter(0.0,msg4);
        scheduleAfter(0.0,msg5);
        scheduleAfter(0.0,msg6);
    }
    else if(strcmp("Job_16",getName())==0){
        MyMsg* msg=generateMsg("Msg_30",0,30.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_17",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_18",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        MyMsg* msg1=generateMsg("Msg_30",1,30.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg1);
    }
    else if(strcmp("Job_19",getName())==0){
        MyMsg* msg=generateMsg("Msg_50",0,50.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_20",getName())==0){
        MyMsg* msg=generateMsg("Msg_10",0,10.0);
        scheduleAfter(0.0,msg);
    }
    else if(strcmp("Job_21",getName())==0){
        MyMsg* msg=generateMsg("Msg_30",0,30.0);
        MyMsg* msg1=generateMsg("Msg_50",1,50.0);
        scheduleAfter(0.0,msg);
        scheduleAfter(0.0,msg1);
    }
}
void Job::handleMessage(cMessage* msg){
    if(msg->isSelfMessage()){
        MyMsg *recvMsg = check_and_cast<MyMsg *>(msg);
        cMessage* sendMsg=new cMessage("Msg");
        send(sendMsg,"out",recvMsg->getGateId());
        scheduleAfter(recvMsg->getPeriod(),recvMsg);
    }
    else
        delete msg;
}

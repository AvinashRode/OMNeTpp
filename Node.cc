#include<omnetpp.h>
#include<string.h>
using namespace omnetpp;
class Node: public cSimpleModule{
protected:
    void initialize() override;
    void handleMessage(cMessage* msg) override;
};
Define_Module(Node);

void Node::initialize(){
    cMessage* msg =new cMessage("message");
       if (par("id").intValue()==0){
           scheduleAt(1.0,msg);
       }
}
void Node::handleMessage(cMessage* msg){
    cMessage* selfMessage=new cMessage("message");
    if (par("id").intValue()==0){
        scheduleAt(simTime()+1.0,selfMessage);
    }
    if(hasGate("out")){
        for(int i=0;i<gateSize("out");i++){
            send(msg->dup(),"out",i);
        }
    }
    delete msg;
}


/*Make a etherium based report card submission smart contract and 
deploy it on repston network.*/


pragma solidity >=0.4.26 <0.6.6;

contract submission
{
    string name;
    int roll_no;
    int batch;
    int mark_1;
    int mark_2;
    int mark_3;
    int mark_4;
    int mark_5;
    int result;
    string status;
    
    function report(string new_name,int new_roll,int new_batch, int new_mark_1, int new_mark_2, int new_mark_3, int new_mark_4,int new_mark_5) public
    {
        name = new_name;
        roll_no = new_roll;
        batch = new_batch;
        mark_1 = new_mark_1;
        mark_2 = new_mark_2;
        mark_3 = new_mark_3;
        mark_4 = new_mark_4;
        mark_5 = new_mark_5;
        
        
        result = mark_1 + mark_2 + mark_3 + mark_4 + mark_5;
        result = result * 100/500;
        
        if (result < 33)
        {
            status = "Fail";
            
        }
        else if (result >=33)
        {
            status = "Pass";
        }
    }
    
    function getDetails()public view returns(string student_name, int Roll_no, int Batch ,int marksOfSubject_1, int marksOfSubject_2, int marksOfSubject_3, int marksOfSubject_4, int marksOfSubject_5,int Percentage,string Status)
    {
        return (name,roll_no,batch,mark_1,mark_2,mark_3,mark_4,mark_5,result,status);
    }
}

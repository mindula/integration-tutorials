import ballerina/persist as _;

type Employee record {|
    readonly int id;
    string name;
    int age;
    string phone;
    string email;
    string department;
    EmployeeTask[] employeeTask;
|};

type EmployeeTask record {|
    readonly int taskId;
    string taskName;
    string description;
    TaskStatus status;
    Employee employee;
|};

public enum TaskStatus {
    NOT_STARTED,
    IN_PROGRESS,
    COMPLETED
};

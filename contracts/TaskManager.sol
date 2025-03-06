// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract TaskManager is Ownable {
    struct Task {
        uint id;
        string title;
        string description;
        bool completed;
        address owner;
    }

    uint private taskCounter;
    mapping(uint => Task) private tasks;
    
    event TaskCreated(uint taskId, string title, string description, address owner);
    event TaskUpdated(uint taskId, string title, string description);
    event TaskCompleted(uint taskId, bool completed);
    event TaskDeleted(uint taskId);

    modifier onlyTaskOwner(uint _taskId) {
        require(tasks[_taskId].owner == msg.sender, "Not the task owner");
        _;
    }

    // ✅ Fix: Initialize Ownable with msg.sender
    constructor() Ownable(msg.sender) {}

    function createTask(string memory _title, string memory _description) external {
        taskCounter++;
        tasks[taskCounter] = Task(taskCounter, _title, _description, false, msg.sender);
        emit TaskCreated(taskCounter, _title, _description, msg.sender);
    }

    function updateTask(uint _taskId, string memory _title, string memory _description) external onlyTaskOwner(_taskId) {
        Task storage task = tasks[_taskId];
        task.title = _title;
        task.description = _description;
        emit TaskUpdated(_taskId, _title, _description);
    }

    function markTaskCompleted(uint _taskId) external onlyTaskOwner(_taskId) {
        Task storage task = tasks[_taskId];
        task.completed = true;
        emit TaskCompleted(_taskId, true);
    }

    function deleteTask(uint _taskId) external onlyTaskOwner(_taskId) {
        delete tasks[_taskId];
        emit TaskDeleted(_taskId);
    }

    function getTask(uint _taskId) external view returns (Task memory) {
        return tasks[_taskId];
    }

    function getAllTasks() external view returns (Task[] memory) {
        Task[] memory taskList = new Task[](taskCounter);
        for (uint i = 1; i <= taskCounter; i++) {
            taskList[i - 1] = tasks[i];
        }
        return taskList;
    }
}

package com.wsunitstats.exporter.task;

import com.wsunitstats.exporter.exception.TaskExecutionException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Component
public class TaskExecutionPool {
    private static final Logger LOG = LogManager.getLogger(TaskExecutionPool.class);

    private final Map<String, ExecutionTask> tasks = new HashMap<>();

    @Autowired
    protected void bindTasks(Set<ExecutionTask> tasks) {
        tasks.forEach(task -> this.tasks.put(task.getName(), task));
    }

    public void executeTasks(List<String> taskNames, ExecutionPayload payload) throws TaskExecutionException {
        for (String taskName : taskNames) {
            ExecutionTask task = tasks.get(taskName);
            if (task != null) {
                LOG.info("Executing {} task", taskName);
                task.execute(payload);
            } else {
                LOG.error("Task {} not found", taskName);
            }
        }
        LOG.info("Task execution completed");
    }
}

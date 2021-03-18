/**Get Maintenance Plan ID*/
select *
from msdb.dbo.sysmaintplan_plans 
where [name] = 'MaintenancePlan' ----Enter Maintenance Plan name here



Select *
from msdb.dbo.sysjobs
where job_id = 
(Select job_ID
from msdb.dbo.sysmaintplan_subplans
where plan_ID = (select ID
                    from msdb.dbo.sysmaintplan_plans 
                    where [name] = 'MaintenancePlan'))

----Delete Maintenance Plan
--exec msdb.dbo.sp_maintplan_delete_plan @plan_id=N'4BB4B63B-FAFF-4194-BF36-9D6D5415AC6A'


/**
Other userful stored procedures for maintenance plans in msdb
dbo.sp_maintplan_{...}
    close_logentry
    delete_log
    delete_plan
    delete_subplan
    open_logentry
    start
    subplans_by_job
    update_log
    update_subplan
    update_subplan_tsx
**/




FROM cptactionhank/atlassian-jira-software:7.2.7

USER root
ADD changes /opt/atlassian/jira/changes
RUN cat /opt/atlassian/jira/changes >> /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/com/atlassian/jira/web/action/JiraWebActionSupport.properties && rm /opt/atlassian/jira/changes
USER daemon
